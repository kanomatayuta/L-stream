<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0
 *
 * @category  PHP
 * @package   Web_System
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 * @version   GIT: <1.0.0>
 * @link      https://digidinos.com
 */
namespace Modules\User\Services;

use App\Events\UserForgetPasswordEvent;
use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use App\Services\BaseService;
use Carbon\Carbon;
use DB;
use Modules\Menu\Models\Menu;
use Modules\Role\Models\Role;
use Modules\User\Models\User;
use Modules\User\Repositories\PasswordResetRepository;
use Modules\User\Repositories\UserRepository;
use Illuminate\Support\Str;
use Symfony\Component\HttpFoundation\Response;

/**
 * UserService class
 *
 * @category User
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class UserService extends BaseService
{
    /**
     * @var \Modules\User\Repositories\PasswordResetRepository passwordResetRepository
     */
    public $passwordResetRepository;

    /**
     * Construct
     *
     * @param Modules\User\Repositories\UserRepository          $repository              User repository.
     * @param Modules\User\Repositories\PasswordResetRepository $passwordResetRepository PasswordResetRepository.
     *
     * @return void
     */
    public function __construct(
        UserRepository $repository,
        PasswordResetRepository $passwordResetRepository
    )
    {
        parent::__construct();
        $this->repository = $repository;
        $this->passwordResetRepository = $passwordResetRepository;
    }

    /**
     * Get user repository.
     *
     * @return Modules\User\Repositories\UserRepository User repository.
     */
    public function getRepository()
    {
        return UserRepository::class;
    }

    /**
     * Get list user menus.
     *
     * @param Modules\User\Models\User $user User model.
     *
     * @return Menu
     */
    public function getMenus(User $user)
    {
        if ($user->role_type === config('constant.user_role_type.admin')) {
            $title = [
                config('constant.menu_admin.user'),
                config('constant.menu_admin.genre'),
                config('constant.menu_admin.plan'),
            ];

            return Menu::with('menus')->whereIn('title', $title)->where('parent_id', 0)->orderBy('position', 'asc')->get();
        }
        
        if ($user->role_type === config('constant.user_role_type.user')) {
            $title = [
               config('constant.menu_user.kol'),
               config('constant.menu_user.insight-list'),
               config('constant.menu_user.campaign'),
               config('constant.menu_user.setting'),
            ];

            return Menu::with('menus')->whereIn('title', $title)->where('parent_id', 0)->orderBy('position', 'asc')->get();
        }
    }

    /**
     * Recursive menu.
     *
     * @param mixed   $menus    Array menu.
     * @param integer $parentId Parent menu id.
     *
     * @return array List of menu
     */
    public function recursiveMenu($menus = [], int $parentId = 0)
    {
        return collect($menus)
            ->filter(function ($item) use ($parentId) {
                return $item->parent_id == $parentId;
            })
            ->map(function ($item) use ($menus) {
                $item->menus = $this->recursiveMenu($menus, $item->id);

                return $item;
            })
            ->values();
    }

    /**
     * Update Or Create Email Token .
     *
     * @param string $email Email Address.
     *
     * @return boolean
     */
    public function updateOrCreateEmailToken(string $email)
    {
        try {
            $input['email'] = $email;
            $input['first'] = true;
            $user = $this->repository->list($input);
            if ($user) {
                $passwordReset = $this->passwordResetRepository->updateOrCreate([
                    'email' => $user->email,
                ], [
                    'token' => Str::random(60),
                ]);
                if ($passwordReset) {
                    $userResetPassword = [
                        'mail' => $passwordReset->email,
                        'token' => $passwordReset->token,
                        'user_name' => $user->name,
                    ];
                    Event(new UserForgetPasswordEvent($userResetPassword));
                }
                return [
                    'success' => true,
                    'data' => $passwordReset,
                ];
            } else {
                return [
                    'success' => false,
                    'message' => config('constant.user_not_found_message'),
                    'error_code' => Response::HTTP_NOT_FOUND,
                ];
            }
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update Password .
     *
     * @param array $input Input.
     *
     * @return array
     */
    public function updatePassword(array $input)
    {
        try {
            $conditions['token'] = $input['token'];
            $conditions['first'] = true;
            $passwordReset = $this->passwordResetRepository->list($conditions);
            if (!$passwordReset) {
                return [
                    'success' => false,
                    'message' => config('constant.token_invalid_message'),
                    'error_code' => Response::HTTP_NOT_FOUND,
                ];
            }
            if (Carbon::parse($passwordReset->updated_at)->addMinutes(config('constant.valid_token_expired'))->isPast()) {
                $this->passwordResetRepository->delete($passwordReset);

                return [
                    'success' => false,
                    'message' => config('constant.token_expired_message'),
                    'error_code' => Response::HTTP_NOT_FOUND,
                ];
            }

            $data['first'] = true;
            $data['email'] = $passwordReset->email;
            $user = $this->repository->list($data);
            if (!empty($user)) {
                $userUpdate = $this->repository->update($user, [
                    'password' => bcrypt($input['old_password']),
                ]);
                if ($userUpdate) {
                    $this->passwordResetRepository->delete($passwordReset);
                }
                return [
                    'success' => true,
                    'data' => $userUpdate,
                ];
            } else {
                return [
                    'success' => false,
                    'message' => config('constant.user_not_found_message'),
                    'error_code' => Response::HTTP_NOT_FOUND,
                ];
            }
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);
        
            return response()->failure($ex->getMessage());
        }
    }
}
