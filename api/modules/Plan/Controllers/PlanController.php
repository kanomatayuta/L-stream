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
namespace Modules\Plan\Controllers;

use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Gate;
use Modules\Plan\Models\Plan;
use Modules\Plan\Requests\CreatePlanRequest;
use Modules\Plan\Requests\UpdatePlanRequest;
use Modules\Plan\Resources\PlanResource;
use Modules\Plan\Resources\UpgradePlanResource;
use Modules\Plan\Services\PlanService;

/**
 * PlanController class
 *
 * @category Plan
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 *
 * @OA\Tag(
 *     name="Plan",
 *     description="Plan Resource",
 * )
 *
 * @OA\Schema(
 *     schema="plan",
 *     @OA\Property(
 *         property="name",
 *         type="string",
 *         example="Name",
 *     ),
 *     @OA\Property(
 *         property="plan_type",
 *         type="boolean",
 *         example=true,
 *     ),
 *     @OA\Property(
 *         property="short_term_money_amount",
 *         type="decimal",
 *         example=2.3,
 *     ),
 *     @OA\Property(
 *         property="long_term_money_amount",
 *         type="decimal",
 *         example=3.5,
 *     ),
 *     @OA\Property(
 *         property="account_search_number",
 *         type="integer",
 *         example=85,
 *     ),
 *     @OA\Property(
 *         property="page_search_number",
 *         type="integer",
 *         example=54,
 *     ),
 *     @OA\Property(
 *         property="profile_view_number",
 *         type="integer",
 *         example=91,
 *     ),
 *     @OA\Property(
 *         property="full_report_number",
 *         type="integer",
 *         example=130,
 *     ),
 *     @OA\Property(
 *         property="export_csv_number",
 *         type="integer",
 *         example=33,
 *     ),
 *     @OA\Property(
 *         property="campaign_register_number",
 *         type="integer",
 *         example=67,
 *     ),
 *     @OA\Property(
 *         property="insight_list_number",
 *         type="integer",
 *         example=89,
 *     ),
 *     @OA\Property(
 *         property="campaign_list_number",
 *         type="integer",
 *         example=28,
 *     ),
 *     @OA\Property(
 *         property="start_date",
 *         type="dateTime",
 *         example="2022-09-19 03:39:24",
 *     ),
 *     @OA\Property(
 *         property="end_date",
 *         type="dateTime",
 *         example="2022-09-19 03:39:24",
 *     ),
 *     @OA\Property(
 *         property="status",
 *         type="boolean",
 *         example=true,
 *     ),
 * )
 */
class PlanController extends Controller
{
    /**
     * Plan service
     *
     * @var \Modules\Plan\Services\PlanService Plan service
     */
    protected $planService;

    /**
     * PlanService construct.
     *
     * @param PlanService $planService Plan service.
     */
    public function __construct(PlanService $planService)
    {
        $this->planService = $planService;
    }

    /**
     * Display a listing of the resource.
     *
     * @param \Illuminate\Http\Request $request Request info.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/plan",
     *     tags={"Plan"},
     *     operationId="indexPlan",
     *     summary="List Plan",
     *     @OA\Parameter(ref="#/components/parameters/page"),
     *     @OA\Parameter(ref="#/components/parameters/limit"),
     *     @OA\Parameter(ref="#/components/parameters/order_by"),
     *     @OA\Parameter(ref="#/components/parameters/order_type"),
     *     @OA\Response(
     *         response=200,
     *         description="Listed",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 type="array",
     *                 @OA\Items(ref="#/components/schemas/plan")
     *             ),
     *             @OA\Property(
     *                 property="meta",
     *                 ref="#/components/schemas/meta"
     *             ),
     *             @OA\Property(
     *                 property="links",
     *                 ref="#/components/schemas/links"
     *             ),
     *         ),
     *     ),
     * )
     */
    public function index(Request $request)
    {
        try {
            $input = $request->all();
            $plans = $this->planService->list($input);
            $result = PlanResource::collection($plans);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Modules\Plan\Requests\CreatePlanRequest $request Handle store data.
     * @param \Modules\Plan\Models\Plan                $plan    Plan model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/plan",
     *     tags={"Plan"},
     *     operationId="storePlan",
     *     summary="Create Plan",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/plan"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/plan",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function store(CreatePlanRequest $request, Plan $plan)
    {
        try {
            if (Gate::denies('modify', $plan)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $plan = $this->planService->create($input);
            $result = new PlanResource($plan);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \Illuminate\Http\Request  $request Handle request data.
     * @param \Modules\Plan\Models\Plan $plan    Plan model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/plan/{id}",
     *     tags={"Plan"},
     *     operationId="showPlan",
     *     summary="Get Plan",
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int64",
     *         ),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Getted",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/plan",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function show(Request $request, Plan $plan)
    {
        try {
            if (Gate::denies('modify', $plan)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $result = new PlanResource($plan);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Modules\Plan\Requests\UpdatePlanRequest $request Handle update data.
     * @param \Modules\Plan\Models\Plan                $plan    Plan model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Put(
     *     path="/api/plan/{id}",
     *     tags={"Plan"},
     *     operationId="updatePlan",
     *     summary="Update Plan",
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int64",
     *         ),
     *     ),
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/plan"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Updated",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/plan",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function update(UpdatePlanRequest $request, Plan $plan)
    {
        try {
            if (Gate::denies('modify', $plan)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $this->planService->update($plan, $input);
            $result = new PlanResource($plan);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \Modules\Plan\Models\Plan $plan Plan model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Delete(
     *     path="/api/plan/{id}",
     *     tags={"Plan"},
     *     operationId="deletePlan",
     *     summary="Delete Plan",
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int64",
     *         ),
     *     ),
     *     @OA\Response(
     *         response=204,
     *         description="Deleted",
     *     ),
     * )
     */
    public function destroy(Plan $plan)
    {
        try {
            if (Gate::denies('modify', $plan)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $result = $this->planService->delete($plan);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Display a listing of the user plan upgrade.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/setting/plan/upgrade",
     *     tags={"Plan"},
     *     operationId="upgradeUserPlan",
     *     summary="Upgrade User Plan",
     *     @OA\Response(
     *         response=200,
     *         description="Listed",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 type="array",
     *                 @OA\Items(ref="#/components/schemas/plan")
     *             ),
     *         ),
     *     ),
     * )
     */
    public function upgradeUserPlan()
    {
        try {
            $input['select'] = ['name', 'short_term_money_amount', 'plan_type'];
            $plans = $this->planService->list($input);
            $result = UpgradePlanResource::collection($plans);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }
}
