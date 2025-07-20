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
namespace Modules\User\Controllers;

use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Modules\Role\Services\RoleService;
use Modules\User\Models\User;
use Modules\User\Requests\AuthRequest;
use Modules\User\Requests\CheckMailExistRequest;
use Modules\User\Requests\CreateUserRequest;
use Modules\User\Requests\ProfileRequest;
use Modules\User\Requests\SearchRequest;
use Modules\User\Requests\UpdatePasswordRequest;
use Modules\User\Requests\UpdateUserRequest;
use Modules\User\Requests\UserRequest;
use Modules\User\Resources\UserResource;
use Modules\User\Services\UserService;
use Modules\Payment\Services\PaymentDetailService;
use Modules\Plan\Models\Plan;
use Modules\Plan\Services\PlanService;
use Modules\Statistic\Services\StatisticService;

/**
 * UserController class
 *
 * @category User
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
 *      schema="user",
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
 *  @OA\Schema(
 *      schema="password_reset",
 *      @OA\Property(
 *          property="email",
 *          type="string",
 *          example="admin@admin.com",
 *      ),
 *      @OA\Property(
 *          property="token",
 *          type="string",
 *          example="123456abc",
 *      ),
 *  )
 */
class UserController extends Controller
{
    /**
     * @var \Modules\User\Services\UserService $userService UserService.
     */
    protected $userService;

    /**
     * @var \Modules\User\Services\RoleService $roleService RoleService.
     */
    protected $roleService;

    /**
     * @var \Modules\Payment\Services\PaymentDetailService $paymentDetailService PaymentDetailService.
     */
    protected $paymentDetailService;

    /**
     * @var \Modules\Plan\Services\PlanService $planService PlanService.
     */
    protected $planService;

    /**
     * @var \Modules\Plan\Services\StatisticService $statisticService StatisticService.
     */
    protected $statisticService;

    /**
     * UserService construct
     *
     * @param UserService          $userService          User service.
     * @param RoleService          $roleService          Role service.
     * @param PaymentDetailService $paymentDetailService Payment PaymentDetailService.
     * @param PlanService          $planService          Plan PlanService.
     * @param StatisticService     $statisticService     Statistic StatisticService.
     */
    public function __construct(
        UserService $userService,
        RoleService $roleService,
        PaymentDetailService $paymentDetailService,
        PlanService $planService,
        StatisticService $statisticService
    )
    {
        $this->userService = $userService;
        $this->roleService = $roleService;
        $this->paymentDetailService = $paymentDetailService;
        $this->planService = $planService;
        $this->statisticService = $statisticService;
    }

    /**
     * Display a listing of the resource.
     *
     * @param \Modules\User\Requests\SearchRequest $request Handle request info.
     *
     * @return \Illuminate\Http\Response
     *
     *  @OA\Get(
     *      path="/api/user",
     *      tags={"User"},
     *      operationId="indexUser",
     *      summary="List User",
     *      @OA\Parameter(ref="#/components/parameters/page"),
     *      @OA\Parameter(ref="#/components/parameters/limit"),
     *      @OA\Parameter(ref="#/components/parameters/order_by"),
     *      @OA\Parameter(ref="#/components/parameters/order_type"),
     *      @OA\Response(
     *          response=200,
     *          description="Listed",
     *          @OA\JsonContent(
     *              @OA\Property(
     *                  property="data",
     *                  type="array",
     *                  @OA\Items(ref="#/components/schemas/user")
     *              ),
     *          ),
     *      ),
     *  )
     */
    public function index(SearchRequest $request)
    {
        try {
            $data = $request->all();
            $data['with'] = ['roles', 'plan', 'paymentPlans'];
            $data['plan_name'] = true;
//            $data['payment_status_sort'] = true;
            $users = $this->userService->list($data);
            $result = UserResource::collection($users);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Modules\User\Requests\CreateUserRequest $request Handle request info.
     *
     * @return \Illuminate\Http\Response
     *
     *  @OA\Post(
     *      path="/api/user",
     *      tags={"User"},
     *      operationId="storeUser",
     *      summary="Create User",
     *      @OA\RequestBody(
     *          required=true,
     *          @OA\JsonContent(ref="#/components/schemas/user"),
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="Created",
     *          @OA\JsonContent(
     *              @OA\Property(
     *                  property="data",
     *                  ref="#/components/schemas/user",
     *              ),
     *          ),
     *      ),
     *  )
     */
    public function store(CreateUserRequest $request)
    {
        DB::beginTransaction();
        try {
            $data = $request->all();
            $data['password'] = bcrypt($request->password);
            $user = $this->userService->create($data);
            $plan = $this->planService->find($data['plan_id']);
            $this->paymentDetailService->storePayment($user, $plan, $data['payment_status']);
            $this->statisticService->storeStatistic($user);
            $result = new UserResource($user);

            DB::commit();
            return response()->success($result);
        } catch (DDException $ex) {
            DB::rollBack();
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \Modules\User\Models\User $user User model.
     *
     * @return \Illuminate\Http\Response
     *
     *  @OA\Get(
     *      path="/api/user/{id}",
     *      tags={"User"},
     *      operationId="showUser",
     *      summary="Get User",
     *      @OA\Parameter(
     *          name="id",
     *          in="path",
     *          required=true,
     *          @OA\Schema(
     *              type="integer",
     *              format="int64",
     *          ),
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="Getted",
     *          @OA\JsonContent(
     *              @OA\Property(
     *                  property="data",
     *                  ref="#/components/schemas/user",
     *              ),
     *          ),
     *      ),
     *  )
     */
    public function show(User $user)
    {
        try {
            $result = new UserResource($user->load('roles'));

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Modules\User\Requests\UpdateUserRequest $request Handle request.
     * @param Modules\User\Models\User                $user    User model.
     *
     * @return \Illuminate\Http\Response
     *
     *  @OA\Put(
     *      path="/api/user/{id}",
     *      tags={"User"},
     *      operationId="updateUser",
     *      summary="Update User",
     *      @OA\Parameter(
     *          name="id",
     *          in="path",
     *          required=true,
     *          @OA\Schema(
     *              type="integer",
     *              format="int64",
     *          ),
     *      ),
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
    public function update(UpdateUserRequest $request, User $user)
    {
        try {
            $data = $request->all();
            if ($request->has('password')) {
                $data['password'] = bcrypt($request->password);
            }
            if ($user->plan_id !== $data['plan_id']) {
                $this->statisticService->updateStatistic($user);
            }
            $user->update($data);
            if ($user->plan->plan_type !== Plan::PLAN_TYPE_FREE_TRIAL) {
                $plan = $this->planService->find($user->plan_id);
                $this->paymentDetailService->updatePayment($user, $plan, $data['payment_status']);
            }
            $result = new UserResource($user);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \Modules\User\Models\User $user User model.
     *
     * @return \Illuminate\Http\Response
     *
     *  @OA\Delete(
     *      path="/api/user/{id}",
     *      tags={"User"},
     *      operationId="deleteUser",
     *      summary="Delete User",
     *      @OA\Parameter(
     *          name="id",
     *          in="path",
     *          required=true,
     *          @OA\Schema(
     *              type="integer",
     *              format="int64",
     *          ),
     *      ),
     *      @OA\Response(
     *          response=204,
     *          description="Deleted",
     *      ),
     *  )
     */
    public function destroy(User $user)
    {
        try {
            $adminUser = $this->userService->findAdmin();
            if ($user->id == auth()->guard('api')->id() || $user->id === $adminUser->id) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $result = $this->userService->deleteUser($user);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update auth user info.
     *
     * @param \Modules\User\Requests\CheckMailExistRequest $checkPasswordRequest Check Password Request.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *      path="/api/forget-password",
     *      tags={"User"},
     *      operationId="forgetPassword",
     *      summary="Send Mail Forget Password ",
     *      @OA\RequestBody(
     *          required=true,
     *          @OA\JsonContent(ref="#/components/schemas/password_reset"),
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="Success",
     *          @OA\JsonContent(
     *              @OA\Property(
     *                  property="data",
     *                  ref="#/components/schemas/password_reset",
     *              ),
     *          ),
     *      ),
     *      @OA\Response(
     *          response=422,
     *          description="Invalid Input",
     *      ),
     *  )
     */
    public function forgetPassword(CheckMailExistRequest $checkPasswordRequest)
    {
        try {
            $input = $checkPasswordRequest->validated();
            $response = $this->userService->updateOrCreateEmailToken($input['email']);

            if ($response['success']) {
                return response()->success($response['data']);
            }

            return response()->failure($response['message'], $response['error_code']);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update Password.
     *
     * @param \Modules\User\Requests\UpdatePasswordRequest $request Update Password Request.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *      path="/api/update-password",
     *      tags={"User"},
     *      operationId="update Password",
     *      summary="Update Password ",
     *      @OA\RequestBody(
     *          required=true,
     *          @OA\JsonContent(ref="#/components/schemas/password_reset"),
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
     *      @OA\Response(
     *          response=422,
     *          description="Invalid Input",
     *      ),
     *      @OA\Response(
     *          response=400,
     *          description="Token Invalid",
     *      ),
     *  )
     */
    public function updatePassword(UpdatePasswordRequest $request)
    {
        try {
            $input = $request->validated();
            // Get email user from password_reset table
            $response = $this->userService->updatePassword($input);

            if ($response['success']) {
                return response()->success($response['data']);
            }

            return response()->failure($response['message'], $response['error_code']);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);
            return response()->failure($ex->getMessage());
        }
    }
}
