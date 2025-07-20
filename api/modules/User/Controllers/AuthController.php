<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0.
 *
 * @category  PHP
 *
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 *
 * @version   GIT: <1.0.0>
 *
 * @see      https://digidinos.com
 */

namespace Modules\User\Controllers;

use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Modules\User\Models\User;
use Modules\User\Requests\AuthRequest;
use Modules\User\Requests\ProfileRequest;
use Modules\User\Requests\UpdateUserInfoRequest;
use Modules\User\Requests\ResetPasswordRequest;
use Modules\User\Resources\UserResource;
use Modules\User\Services\UserService;

/**
 * AuthController class
 *
 * @category Auth
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 *
 *  @OA\Tag(
 *      name="User",
 *      description="User Resource",
 * )
 *
 *  @OA\Schema(
 *      schema="userWithPassword",
 *      @OA\Property(
 *          property="name",
 *          type="string",
 *          example="admin",
 *      ),
 *      @OA\Property(
 *          property="email",
 *          type="string",
 *          example="admin@admin.com",
 *      ),
 *      @OA\Property(
 *          property="old_password",
 *          type="string",
 *          example="123456",
 *      ),
 *      @OA\Property(
 *          property="new_password",
 *          type="string",
 *          example="123456",
 *      ),
 *  )
 *
 *  @OA\Schema(
 *      schema="auth",
 *      @OA\Property(
 *          property="email",
 *          type="string",
 *          example="admin@admin.com",
 *      ),
 *      @OA\Property(
 *          property="password",
 *          type="string",
 *          example="123456",
 *      ),
 *  )
 */
class AuthController extends Controller
{
    /**
     * @var \Modules\User\Services\UserService userService
     */
    protected $userService;

    /**
     * UserService construct.
     *
     * @param UserService $userService User service.
     */
    public function __construct(UserService $userService)
    {
        $this->userService = $userService;
    }

    /**
     * Login user.
     *
     * @param \Modules\User\Requests\AuthRequest $request Auth request info.
     *
     * @return \Illuminate\Http\Response access token
     *
     *  @OA\Post(
     *      path="/api/auth/login",
     *      tags={"User"},
     *      operationId="loginUser",
     *      summary="Login User",
     *      @OA\RequestBody(
     *          required=true,
     *          @OA\JsonContent(ref="#/components/schemas/auth"),
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="Logged in",
     *      ),
     *  )
     */
    public function login(AuthRequest $request)
    {
        try {
            if (!auth()->attempt(['email' => $request->email, 'password' => $request->password])) {
                return response()->json(['message' => 'Email/Password do not match'], 401);
            }

            $user = auth()->user();
            $token = $user->createToken($user->email)->accessToken;

            return response()->success(['access_token' => $token]);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Get auth user info.
     *
     * @return \Modules\User\Resources\UserResource user info.
     *
     *  @OA\Get(
     *      path="/api/auth/me",
     *      tags={"User"},
     *      operationId="getProfileUser",
     *      summary="Get Auth User",
     *      @OA\Response(
     *          response=200,
     *          description="Getted",
     *      ),
     *  )
     */
    public function getProfile()
    {
        try {
            $user = auth()->guard('api')->user();
            $user->menus = $this->userService->getMenus($user);
            $result = new UserResource($user);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update auth user info.
     *
     * @param \Modules\User\Requests\ProfileRequest $request Update user info request.
     *
     * @return \Illuminate\Http\Response user profile
     *
     * @OA\Post(
     *      path="/api/auth/me",
     *      tags={"User"},
     *      operationId="postProfileUser",
     *      summary="Update Auth User",
     *      @OA\RequestBody(
     *          required=true,
     *          @OA\JsonContent(ref="#/components/schemas/userWithPassword"),
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="Updated",
     *          @OA\JsonContent(
     *              @OA\Property(
     *                  property="data",
     *                  ref="#/components/schemas/user",
     *              ),
     *          ),
     *      ),
     *  )
     */
    public function postProfile(ProfileRequest $request)
    {
        try {
            $user = auth()->user();
            $data = $request->only('name');

            if ($request->has('old_password') && $request->has('new_password')) {
                if (!auth()->guard('web')->attempt(['email' => $user->email, 'password' => $request->old_password])) {
                    return response()->json(['message' => 'Password doesn\'t match'], 403);
                }
                $data['password'] = bcrypt($request->new_password);
            }

            $this->userService->update($user, $data);
            $user->menus = $this->userService->getMenus($user);
            $result = new UserResource($user);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Logout user.
     *
     * @return \Illuminate\Http\Response
     *
     *  @OA\Post(
     *      path="/api/auth/logout",
     *      tags={"User"},
     *      operationId="logoutUser",
     *      summary="Logout User",
     *      @OA\Response(
     *          response=204,
     *          description="Logged out",
     *      ),
     *  )
     */
    public function logout()
    {
        try {
            $user = auth()->guard('api')->user();
            if ($user) {
                $user->token()->revoke();
            }

            return response()->success(null);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Get profile and plan user info.
     *
     * @return \Modules\User\Resources\UserResource user info.
     *
     *  @OA\Get(
     *      path="/api/setting",
     *      tags={"Setting"},
     *      operationId="settingUser",
     *      summary="Get Auth User",
     *      @OA\Response(
     *          response=200,
     *          description="Getted",
     *      ),
     *  )
     */
    public function setting()
    {
        try {
            $user = auth()->guard('api')->user();
            $user->load('plan');
            $user->load('latestStatistic');
            $result = new UserResource($user);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update User Info.
     *
     * @param Modules\User\Requests\UpdateUserInfoRequest $request Handle request.
     *
     * @return \Illuminate\Http\Response
     *
     *  @OA\Post(
     *      path="/api/setting/user/update",
     *      tags={"User"},
     *      operationId="updateUserInfoUser",
     *      summary="Update User Info User",
     *      @OA\RequestBody(
     *          required=true,
     *          @OA\JsonContent(ref="#/components/schemas/user"),
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="Updated",
     *          @OA\JsonContent(
     *              @OA\Property(
     *                  property="data",
     *                  ref="#/components/schemas/user",
     *              ),
     *          ),
     *      ),
     *  )
     */
    public function updateUserInfo(UpdateUserInfoRequest $request)
    {
        try {
            $input = $request->all();
            if ($request->has('password')) {
                $input['password'] = bcrypt($request->password);
            }
            $user = $this->userService->find(auth()->user()->id);
            $user = $this->userService->update($user, $input);
            $result = new UserResource($user);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Reset user password.
     *
     * @param Modules\User\Requests\ResetPasswordRequest $request Handle request.
     *
     * @return \Illuminate\Http\Response
     *
     *  @OA\Post(
     *      path="/api/setting/user/password",
     *      tags={"User"},
     *      operationId="resetPasswordUser",
     *      summary="Reset Password User",
     *      @OA\RequestBody(
     *          required=true,
     *          @OA\JsonContent(ref="#/components/schemas/user"),
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="Success",
     *          @OA\JsonContent(
     *              @OA\Property(
     *                  property="data",
     *                  ref="#/components/schemas/user",
     *              ),
     *          ),
     *      ),
     *  )
     */
    public function resetPassword(ResetPasswordRequest $request)
    {
        try {
            $input = bcrypt($request->password);
            $user = $this->userService->find(auth()->user()->id);
            $user = $this->userService->update($user, [
                'password' => $input,
            ]);

            $result = new UserResource($user);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);
            return response()->failure($ex->getMessage());
        }
    }
}
