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
 **/
namespace Modules\Payment\Controllers;

use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Gate;
use Modules\Payment\Models\PaymentDetail;
use Modules\Payment\Requests\CreatePaymentDetailRequest;
use Modules\Payment\Requests\UpdatePaymentDetailRequest;
use Modules\Payment\Resources\PaymentDetailResource;
use Modules\Payment\Services\PaymentDetailService;

/**
 * PaymentDetailController class
 *
 * @category Payment
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 *
 * @OA\Tag(
 *     name="PaymentDetail",
 *     description="PaymentDetail Resource",
 * )
 *
 * @OA\Schema(
 *     schema="paymentDetail",
 *     @OA\Property(
 *         property="plan_id",
 *         type="integer",
 *         example=49,
 *     ),
 *     @OA\Property(
 *         property="user_id",
 *         type="integer",
 *         example=102,
 *     ),
 *     @OA\Property(
 *         property="term_mode",
 *         type="boolean",
 *         example=true,
 *     ),
 *     @OA\Property(
 *         property="money_amount",
 *         type="decimal",
 *         example=1.7,
 *     ),
 *     @OA\Property(
 *         property="account_search_number",
 *         type="integer",
 *         example=51,
 *     ),
 *     @OA\Property(
 *         property="page_search_number",
 *         type="integer",
 *         example=96,
 *     ),
 *     @OA\Property(
 *         property="profile_view_number",
 *         type="integer",
 *         example=48,
 *     ),
 *     @OA\Property(
 *         property="full_report_number",
 *         type="integer",
 *         example=88,
 *     ),
 *     @OA\Property(
 *         property="export_csv_number",
 *         type="integer",
 *         example=177,
 *     ),
 *     @OA\Property(
 *         property="campaign_register_number",
 *         type="integer",
 *         example=36,
 *     ),
 *     @OA\Property(
 *         property="insight_list_number",
 *         type="integer",
 *         example=30,
 *     ),
 *     @OA\Property(
 *         property="campaign_list_number",
 *         type="integer",
 *         example=153,
 *     ),
 *     @OA\Property(
 *         property="start_date",
 *         type="date",
 *         example="2022-09-19",
 *     ),
 *     @OA\Property(
 *         property="end_date",
 *         type="date",
 *         example="2022-09-19",
 *     ),
 *     @OA\Property(
 *         property="payment_status",
 *         type="boolean",
 *         example=true,
 *     ),
 * )
 */
class PaymentDetailController extends Controller
{
    /**
     * PaymentDetail service.
     *
     * @var \Modules\Payment\Services\PaymentDetailService PaymentDetail service
     */
    protected $paymentDetailService;

    /**
     * PaymentDetailService construct.
     *
     * @param PaymentDetailService $paymentDetailService PaymentDetail service
     */
    public function __construct(PaymentDetailService $paymentDetailService)
    {
        $this->paymentDetailService = $paymentDetailService;
    }

    /**
     * Display a listing of the resource.
     *
     * @param \Illuminate\Http\Request $request request info
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/payment/detail",
     *     tags={"PaymentDetail"},
     *     operationId="indexPaymentDetail",
     *     summary="List PaymentDetail",
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
     *                 @OA\Items(ref="#/components/schemas/paymentDetail")
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
            $paymentDetails = $this->paymentDetailService->list($input);
            $result = PaymentDetailResource::collection($paymentDetails);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Modules\Payment\Requests\CreatePaymentDetailRequest $request       handle store data
     * @param \Modules\Payment\Models\PaymentDetail                $paymentDetail paymentDetail model
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/payment/detail",
     *     tags={"PaymentDetail"},
     *     operationId="storePaymentDetail",
     *     summary="Create PaymentDetail",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/paymentDetail"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/paymentDetail",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function store(CreatePaymentDetailRequest $request, PaymentDetail $paymentDetail)
    {
        try {
            if (Gate::denies('modify', $paymentDetail)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $paymentDetail = $this->paymentDetailService->create($input);
            $result = new PaymentDetailResource($paymentDetail);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \Illuminate\Http\Request              $request       handle request data
     * @param \Modules\Payment\Models\PaymentDetail $paymentDetail paymentDetail model
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/payment/detail/{id}",
     *     tags={"PaymentDetail"},
     *     operationId="showPaymentDetail",
     *     summary="Get PaymentDetail",
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
     *                 ref="#/components/schemas/paymentDetail",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function show(Request $request, PaymentDetail $paymentDetail)
    {
        try {
            if (Gate::denies('modify', $paymentDetail)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $result = new PaymentDetailResource($paymentDetail);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Modules\Payment\Requests\UpdatePaymentDetailRequest $request       handle update data
     * @param \Modules\Payment\Models\PaymentDetail                $paymentDetail paymentDetail model
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Put(
     *     path="/api/payment/detail/{id}",
     *     tags={"PaymentDetail"},
     *     operationId="updatePaymentDetail",
     *     summary="Update PaymentDetail",
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
     *         @OA\JsonContent(ref="#/components/schemas/paymentDetail"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Updated",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/paymentDetail",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function update(UpdatePaymentDetailRequest $request, PaymentDetail $paymentDetail)
    {
        try {
            if (Gate::denies('modify', $paymentDetail)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $this->paymentDetailService->update($paymentDetail, $input);
            $result = new PaymentDetailResource($paymentDetail);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \Modules\Payment\Models\PaymentDetail $paymentDetail paymentDetail model
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Delete(
     *     path="/api/payment/detail/{id}",
     *     tags={"PaymentDetail"},
     *     operationId="deletePaymentDetail",
     *     summary="Delete PaymentDetail",
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
    public function destroy(PaymentDetail $paymentDetail)
    {
        try {
            if (Gate::denies('modify', $paymentDetail)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $result = $this->paymentDetailService->destroy($paymentDetail);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }
}
