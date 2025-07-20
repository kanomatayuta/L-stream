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
namespace Modules\Campaign\Controllers;

use App\Imports\CampaignDetailImportKol;
use Maatwebsite\Excel\Facades\Excel;
use Modules\Campaign\Models\Campaign;
use Modules\Campaign\Requests\CampaignDetailImportKolRequest;
use Modules\Campaign\Requests\CreateCampaignDetailRequest;
use Modules\Campaign\Requests\UpdateCampaignDetailRequest;
use Modules\Campaign\Resources\CampaignDetailResource;
use Modules\Campaign\Models\CampaignDetail;
use Modules\Campaign\Services\CampaignDetailService;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Gate;
use App\Http\Controllers\Controller;
use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use Illuminate\Support\Facades\DB;
use Modules\Campaign\Services\CampaignService;
use Modules\Kol\Models\Kol;
use Modules\Plan\Models\Plan;

/**
 * CampaignDetailController class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 *
 * @OA\Tag(
 *     name="CampaignDetail",
 *     description="CampaignDetail Resource",
 * )
 *
 * @OA\Schema(
 *     schema="campaignDetail",
 *     @OA\Property(
 *         property="campaign_id",
 *         type="number",
 *         example=123,
 *     ),
 *     @OA\Property(
 *         property="kol_id",
 *         type="number",
 *         example=123,
 *     ),
 *     @OA\Property(
 *         property="kol_status",
 *         type="number",
 *         example=1,
 *     ),
 *      @OA\Property(
 *         property="cost",
 *         type="decimal",
 *         example=100.00,
 *     ),
 *     @OA\Property(
 *         property="notes",
 *         type="string",
 *         example="notes",
 *     ),
 * )
 */
class CampaignDetailController extends Controller
{
    /**
     * CampaignDetail service
     *
     * @var \Modules\Campaign\Services\CampaignDetailService $campaignDetailService CampaignDetail service
     */
    protected $campaignDetailService;

    /**
     * Campaign service
     *
     * @var \Modules\Campaign\Services\CampaignService $campaignService Campaign service
     */
    protected $campaignService;

    /**
     * CampaignDetailService construct
     *
     * @param CampaignDetailService $campaignDetailService CampaignDetail service.
     * @param CampaignService       $campaignService       CampaignDetail service.
     */
    public function __construct(
        CampaignDetailService $campaignDetailService,
        CampaignService $campaignService
    )
    {
        $this->campaignDetailService = $campaignDetailService;
        $this->campaignService = $campaignService;
    }

    /**
     * Display a listing of the resource.
     *
     * @param \Illuminate\Http\Request $request Request info.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/campaign/detail",
     *     tags={"CampaignDetail"},
     *     operationId="indexCampaignDetail",
     *     summary="List CampaignDetail",
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
     *                 @OA\Items(ref="#/components/schemas/campaignDetail")
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
            $campaignDetails = $this->campaignDetailService->list($input);
            $result = CampaignDetailResource::collection($campaignDetails);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Modules\Campaign\Requests\CreateCampaignDetailRequest $request        Handle store data.
     * @param \Modules\Campaign\Models\CampaignDetail                $campaignDetail CampaignDetail model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/campaign/detail",
     *     tags={"CampaignDetail"},
     *     operationId="storeCampaignDetail",
     *     summary="Create CampaignDetail",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/campaignDetail"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/campaignDetail",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function store(CreateCampaignDetailRequest $request, CampaignDetail $campaignDetail)
    {
        try {
            $input = $request->all();
            $campaignDetail = $this->campaignDetailService->create($input);
            $result = new CampaignDetailResource($campaignDetail);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \Illuminate\Http\Request                $request        Handle request data.
     * @param \Modules\Campaign\Models\CampaignDetail $campaignDetail CampaignDetail model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/campaign/detail/{id}",
     *     tags={"CampaignDetail"},
     *     operationId="showCampaignDetail",
     *     summary="Get CampaignDetail",
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
     *                 ref="#/components/schemas/campaignDetail",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function show(Request $request, CampaignDetail $campaignDetail)
    {
        try {
            if (Gate::denies('modify', $campaignDetail)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $result = new CampaignDetailResource($campaignDetail);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Modules\Campaign\Requests\UpdateCampaignDetailRequest $request        Handle update data.
     * @param \Modules\Campaign\Models\CampaignDetail                $campaignDetail CampaignDetail model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Put(
     *     path="/api/campaign/detail/{id}",
     *     tags={"CampaignDetail"},
     *     operationId="updateCampaignDetail",
     *     summary="Update CampaignDetail",
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
     *         @OA\JsonContent(ref="#/components/schemas/campaignDetail"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Updated",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/campaignDetail",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function update(UpdateCampaignDetailRequest $request, CampaignDetail $campaignDetail)
    {
        try {
            if (Gate::denies('modify', $campaignDetail)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $this->campaignDetailService->update($campaignDetail, $input);
            $result = new CampaignDetailResource($campaignDetail);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \Modules\Campaign\Models\CampaignDetail $campaignDetail CampaignDetail model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Delete(
     *     path="/api/campaign/detail/{id}",
     *     tags={"CampaignDetail"},
     *     operationId="deleteCampaignDetail",
     *     summary="Delete CampaignDetail",
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
    public function destroy(CampaignDetail $campaignDetail)
    {
        try {
            if (Gate::denies('modify', $campaignDetail)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $result = $this->campaignDetailService->destroy($campaignDetail);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store 15 Kols to campaigns.
     *
     * @param \Illuminate\Http\Request $request Request info.
     *
     * @return \Illuminate\Http\Response
     * @OA\Post(
     *     path="/api/campaign/detail/store/kols",
     *     tags={"CampaignDetail"},
     *     operationId="registerKolsToCampaignsCampaignDetail",
     *     summary="Register 15 Kols To Campaign",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/campaignDetail"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *     ),
     * )
     */
    public function registerKolsToCampaigns(Request $request)
    {
        try {
            if (Gate::denies('register-campaign')) {
                $msgCode = (auth()->user() && auth()->user()->plan && auth()->user()->plan->plan_type === config('constant.user_payment.plan_types.free_trial'))
                    ? config('constant.user_payment.plan_errors.free_trial_error')
                    : config('constant.user_payment.plan_errors.campaign_register_number_error');
                return response()->json(['message' => 'Access denied', 'message_code' => $msgCode], 403);

                return response()->json(['message' => 'Access denied', 'message_code' => config('constant.user_payment.plan_errors.campaign_register_number_error')], 403);
            }
            $input = $request->all();
            $this->campaignService->registerKolsToCampaigns($input);

            return response()->success();
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Remove 15 Kols from campaign.
     *
     * @param \Illuminate\Http\Request $request Request info.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/campaign/detail/remove/kols",
     *     tags={"CampaignDetail"},
     *     operationId="removeKolsFromCampaignCampaignDetail",
     *     summary="Remove 15 Kols from campaign",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/campaignDetail"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Deleted",
     *     ),
     * )
     */
    public function removeKolsFromCampaign(Request $request)
    {
        DB::beginTransaction();
        try {
            if (Gate::denies('register-campaign')) {
                $msgCode = (auth()->user() && auth()->user()->plan && auth()->user()->plan->plan_type === config('constant.user_payment.plan_types.free_trial'))
                    ? config('constant.user_payment.plan_errors.free_trial_error')
                    : config('constant.user_payment.plan_errors.campaign_register_number_error');
                return response()->json(['message' => 'Access denied', 'message_code' => $msgCode], 403);
            }
            $input = $request->all();
            $result = $this->campaignService->removeKolsFromCampaign($input);
            if (!$result) {
                throw new DDException('Remove kol from campaign failed');
            }

            DB::commit();
            return response()->success($result);
        } catch (DDException $ex) {
            DB::rollBack();
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Get kol at tab report
     *
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/campaign-report/{campaign}",
     *     tags={"CampaignDetail"},
     *     operationId="showKolTabReport",
     *     summary="Get kol at tabreport",
     *     @OA\Parameter(
     *         name="campaign",
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
     *                 ref="#/components/schemas/campaignDetail",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function getKolReport(Campaign $campaign)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $kols = $this->campaignDetailService->getKolReport($campaign);
            $result = CampaignDetailResource::collection($kols);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request Request info.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/campaign-detail/registered-campaign",
     *     tags={"CampaignDetail"},
     *     operationId="getRegisteredCampaign",
     *     summary="Get Registered Campaign",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/campaignDetail"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/campaignDetail",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function getRegisteredCampaign(Request $request)
    {
        try {
            $input = $request->all();
            $data = $this->campaignDetailService->getRegisteredCampaign($input);

            return response()->success($data);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Get list kol at tab list up
     *
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     * @param \Illuminate\Http\Request          $request  Handle store data.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/campaignDetailKol/{campaign}",
     *     tags={"CampaignDetail"},
     *     operationId="getKolCampaignDetail",
     *     summary="List Kol",
     *     @OA\Parameter(
     *         name="campaign",
     *         in="query",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int64",
     *         ),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="GetKol",
     *     ),
     * )
     */
    public function getKol(Campaign $campaign, Request $request)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $input['campaign_id'] = $campaign->id;
            $data = $this->campaignDetailService->list($input);
            $result = CampaignDetailResource::collection($data);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Get list kol with status ok.
     *
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     * @param \Illuminate\Http\Request          $request  Handle store data.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/campaignDetailKolOk/{campaign}",
     *     tags={"CampaignDetail"},
     *     operationId="getKolOkCampaignDetail",
     *     summary="List Kol with status ok",
     *     @OA\Parameter(
     *         name="campaign",
     *         in="query",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int64",
     *         ),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="GetKolWithStatusOk",
     *     ),
     * )
     */
    public function getKolOk(Campaign $campaign, Request $request)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $input['campaign_id'] = $campaign->id;
            $input['kol_status_ok'] = config('constant.campaign_status.ok');
            $data = $this->campaignDetailService->list($input);
            $result = CampaignDetailResource::collection($data);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store kol by import file excel.
     *
     * @param \Modules\Campaign\Requests\CampaignDetailImportKolRequest $request Handle store data.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/campaign-detail/import-kols",
     *     tags={"CampaignDetail"},
     *     operationId="storeKolbyExcel",
     *     summary="add kol to campaign by excel",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/campaignDetail"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/campaignDetail",
     *             ),
     *         ),
     *     ),
     *  )
     */
    public function importKol(CampaignDetailImportKolRequest $request)
    {
        try {
            $file = $request->file;
            $data = $request->only('campaign_id', 'social_type');
            $instance = new CampaignDetailImportKol($data);
            Excel::import($instance, $file);
            return response()->success(true);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }
}
