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
namespace Modules\User\Repositories;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
use Modules\User\Models\User;
use App\Repositories\BaseRepository;
use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use Modules\Payment\Models\PaymentDetail;

/**
 * UserRepository class
 *
 * @category User
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class UserRepository extends BaseRepository
{
    /**
     * Get user model.
     *
     * @return Modules\User\Models\User User model.
     */
    public function getModel()
    {
        return User::class;
    }

    /**
     * Dynamic build search function.
     *
     * @param mixed $query  Query builder.
     * @param mixed $column Column for query.
     * @param mixed $data   Data filter.
     *
     * @return Query
     */
    public function search($query, $column, $data)
    {
        switch ($column) {
            case 'email':
//            case 'code':
//            case 'avatar_url':
//            case 'date_join':
//            case 'birthday':
//            case 'gender':
//            case 'is_active':
//            case 'mobile_no':
            case 'username':
                return $query->where($column, $data);
                break;
            case 'plan':
                return $query->whereHas('Plan', function ($query) use ($data, $column) {
                    $column = 'id';
                    $query->where($column, $data);
                });
            case 'payment_status':
                return $query->whereHas('paymentPlans', function ($query) use ($data, $column) {
                    $column = 'payment_status';
                    $query->where($column, $data);
                });
            case 'payment_status_sort':
                return $query->withCount([
                    'paymentPlans AS payment_status_sort' => function ($query) {
                        $query->select(DB::raw("payment_status"));
                    },
                ]);
                break;
            case 'company_name':
            case 'name':
            case 'address':
                return $query->where($column, 'like', '%' . $data . '%');
                break;
            case 'plan_name':
                return $query->withCount([
                    'plan AS plan_name' => function ($query) {
                        $query->select(DB::raw("name"));
                    },
                ]);
                break;
            default:
                return $query;
                break;
        }
    }

    /**
     * Get first admin account
     *
     * @return Model
     */
    public function findAdmin()
    {
        return $this->model->where('role_type', config('constant.user_role_type.admin'))->firstOrFail();
    }

    /**
     * Delete User
     *
     * @param \Modules\User\Models\User $user User model.
     * @return \Illuminate\Http\Response
     */
    public function deleteUser(User $user)
    {
        DB::beginTransaction();
        try {
            foreach ($user->campaigns as $campaign) {
                $campaign->campaign_report()->delete();
                $campaign->campaign_detail_posts()->delete();
                $campaign->campaign_details()->delete();
                $campaign->delete();
            }
            $user->ratings()->delete();
            $user->tags()->delete();
            $user->statistic()->delete();
            $user->paymentPlans()->delete();
            $user->delete();
            DB::commit();
        } catch (DDException $e) {
            LogHelper::logTrace($e);
            DB::rollBack();

            return response()->failure($e->getMessage());
        }
    }
}
