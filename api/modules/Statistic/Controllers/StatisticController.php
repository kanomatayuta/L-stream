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
 * @see       https://digidinos.com
 */
namespace Modules\Statistic\Controllers;

use Modules\Statistic\Requests\CreateStatisticRequest;
use Modules\Statistic\Requests\UpdateStatisticRequest;
use Modules\Statistic\Resources\StatisticResource;
use Modules\Statistic\Models\Statistic;
use Modules\Statistic\Services\StatisticService;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Gate;
use App\Http\Controllers\Controller;
use App\Exceptions\DDException;
use App\Helpers\LogHelper;

/**
 * StatisticController class
 *
 * @category Statistic
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 *
 * @OA\Tag(
 *     name="Statistic",
 *     description="Statistic Resource",
 * )
 *
 * @OA\Schema(
 *     schema="statistic",
 *     @OA\Property(
 *         property="user_id",
 *         type="integer",
 *         example=19,
 *     ),
 *     @OA\Property(
 *         property="account_search_number",
 *         type="integer",
 *         example=162,
 *     ),
 *     @OA\Property(
 *         property="page_search_number",
 *         type="integer",
 *         example=141,
 *     ),
 *     @OA\Property(
 *         property="profile_view_number",
 *         type="integer",
 *         example=173,
 *     ),
 *     @OA\Property(
 *         property="full_report_number",
 *         type="integer",
 *         example=177,
 *     ),
 *     @OA\Property(
 *         property="export_csv_number",
 *         type="integer",
 *         example=111,
 *     ),
 *     @OA\Property(
 *         property="campaign_register_number",
 *         type="integer",
 *         example=62,
 *     ),
 *     @OA\Property(
 *         property="insight_list_number",
 *         type="integer",
 *         example=33,
 *     ),
 *     @OA\Property(
 *         property="campaign_list_number",
 *         type="integer",
 *         example=92,
 *     ),
 *     @OA\Property(
 *         property="month",
 *         type="integer",
 *         example=21,
 *     ),
 * )
 */
class StatisticController extends Controller
{
    /**
     * Statistic service
     *
     * @var \Modules\Statistic\Services\StatisticService $statisticService Statistic service
     */
    protected $statisticService;

    /**
     * StatisticService construct
     *
     * @param StatisticService $statisticService Statistic service
     */
    public function __construct(StatisticService $statisticService)
    {
        $this->statisticService = $statisticService;
    }

    /**
     * Display a listing of the resource.
     *
     * @param \Illuminate\Http\Request $request Request info.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/statistic",
     *     tags={"Statistic"},
     *     operationId="indexStatistic",
     *     summary="List Statistic",
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
     *                 @OA\Items(ref="#/components/schemas/statistic")
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
            $statistics = $this->statisticService->list($input);
            $result = StatisticResource::collection($statistics);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Modules\Statistic\Requests\CreateStatisticRequest $request Handle store data.
     * @param \Modules\Statistic\Models\Statistic $statistic Statistic model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/statistic",
     *     tags={"Statistic"},
     *     operationId="storeStatistic",
     *     summary="Create Statistic",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/statistic"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/statistic",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function store(CreateStatisticRequest $request, Statistic $statistic)
    {
        try {
            if (Gate::denies('modify', $statistic)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $statistic = $this->statisticService->create($input);
            $result =  new StatisticResource($statistic);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \Illuminate\Http\Request $request Handle request data.
     * @param \Modules\Statistic\Models\Statistic $statistic Statistic model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/statistic/{id}",
     *     tags={"Statistic"},
     *     operationId="showStatistic",
     *     summary="Get Statistic",
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
     *                 ref="#/components/schemas/statistic",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function show(Request $request, Statistic $statistic)
    {
        try {
            if (Gate::denies('modify', $statistic)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $result = new StatisticResource($statistic);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Modules\Statistic\Requests\UpdateStatisticRequest $request Handle update data.
     * @param \Modules\Statistic\Models\Statistic $statistic Statistic model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Put(
     *     path="/api/statistic/{id}",
     *     tags={"Statistic"},
     *     operationId="updateStatistic",
     *     summary="Update Statistic",
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
     *         @OA\JsonContent(ref="#/components/schemas/statistic"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Updated",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/statistic",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function update(UpdateStatisticRequest $request, Statistic $statistic)
    {
        try {
            if (Gate::denies('modify', $statistic)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $this->statisticService->update($statistic, $input);
            $result = new StatisticResource($statistic);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \Modules\Statistic\Models\Statistic $statistic Statistic model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Delete(
     *     path="/api/statistic/{id}",
     *     tags={"Statistic"},
     *     operationId="deleteStatistic",
     *     summary="Delete Statistic",
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
    public function destroy(Statistic $statistic)
    {
        try {
            if (Gate::denies('modify', $statistic)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $result = $this->statisticService->destroy($statistic);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }
}
