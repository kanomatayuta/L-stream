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

use Modules\Statistic\Requests\CreateStatisticDetailRequest;
use Modules\Statistic\Requests\UpdateStatisticDetailRequest;
use Modules\Statistic\Resources\StatisticDetailResource;
use Modules\Statistic\Models\StatisticDetail;
use Modules\Statistic\Services\StatisticDetailService;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Gate;
use App\Http\Controllers\Controller;
use App\Exceptions\DDException;
use App\Helpers\LogHelper;

/**
 * StatisticDetailController class
 *
 * @category Statistic
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 *
 * @OA\Tag(
 *     name="StatisticDetail",
 *     description="StatisticDetail Resource",
 * )
 *
 * @OA\Schema(
 *     schema="statisticDetail",
 *     @OA\Property(
 *         property="user_id",
 *         type="integer",
 *         example=159,
 *     ),
 *     @OA\Property(
 *         property="api_url",
 *         type="string",
 *         example="Api url",
 *     ),
 *     @OA\Property(
 *         property="day",
 *         type="dateTime",
 *         example="2022-09-19 04:04:25",
 *     ),
 *     @OA\Property(
 *         property="other_info",
 *         type="text",
 *         example="other info",
 *     ),
 * )
 */
class StatisticDetailController extends Controller
{
    /**
     * StatisticDetail service
     *
     * @var \Modules\Statistic\Services\StatisticDetailService $statisticDetailService StatisticDetail service
     */
    protected $statisticDetailService;

    /**
     * StatisticDetailService construct
     *
     * @param StatisticDetailService $statisticDetailService StatisticDetail service
     */
    public function __construct(StatisticDetailService $statisticDetailService)
    {
        $this->statisticDetailService = $statisticDetailService;
    }

    /**
     * Display a listing of the resource.
     *
     * @param \Illuminate\Http\Request $request Request info.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/statistic/detail",
     *     tags={"StatisticDetail"},
     *     operationId="indexStatisticDetail",
     *     summary="List StatisticDetail",
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
     *                 @OA\Items(ref="#/components/schemas/statisticDetail")
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
            $statisticDetails = $this->statisticDetailService->list($input);
            $result = StatisticDetailResource::collection($statisticDetails);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Modules\Statistic\Requests\CreateStatisticDetailRequest $request Handle store data.
     * @param \Modules\Statistic\Models\StatisticDetail $statisticDetail StatisticDetail model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/statistic/detail",
     *     tags={"StatisticDetail"},
     *     operationId="storeStatisticDetail",
     *     summary="Create StatisticDetail",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/statisticDetail"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/statisticDetail",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function store(CreateStatisticDetailRequest $request, StatisticDetail $statisticDetail)
    {
        try {
            if (Gate::denies('modify', $statisticDetail)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $statisticDetail = $this->statisticDetailService->create($input);
            $result =  new StatisticDetailResource($statisticDetail);

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
     * @param \Modules\Statistic\Models\StatisticDetail $statisticDetail StatisticDetail model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/statistic/detail/{id}",
     *     tags={"StatisticDetail"},
     *     operationId="showStatisticDetail",
     *     summary="Get StatisticDetail",
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
     *                 ref="#/components/schemas/statisticDetail",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function show(Request $request, StatisticDetail $statisticDetail)
    {
        try {
            if (Gate::denies('modify', $statisticDetail)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $result = new StatisticDetailResource($statisticDetail);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Modules\Statistic\Requests\UpdateStatisticDetailRequest $request Handle update data.
     * @param \Modules\Statistic\Models\StatisticDetail $statisticDetail StatisticDetail model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Put(
     *     path="/api/statistic/detail/{id}",
     *     tags={"StatisticDetail"},
     *     operationId="updateStatisticDetail",
     *     summary="Update StatisticDetail",
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
     *         @OA\JsonContent(ref="#/components/schemas/statisticDetail"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Updated",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/statisticDetail",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function update(UpdateStatisticDetailRequest $request, StatisticDetail $statisticDetail)
    {
        try {
            if (Gate::denies('modify', $statisticDetail)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $this->statisticDetailService->update($statisticDetail, $input);
            $result = new StatisticDetailResource($statisticDetail);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \Modules\Statistic\Models\StatisticDetail $statisticDetail StatisticDetail model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Delete(
     *     path="/api/statistic/detail/{id}",
     *     tags={"StatisticDetail"},
     *     operationId="deleteStatisticDetail",
     *     summary="Delete StatisticDetail",
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
    public function destroy(StatisticDetail $statisticDetail)
    {
        try {
            if (Gate::denies('modify', $statisticDetail)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $result = $this->statisticDetailService->destroy($statisticDetail);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }
}
