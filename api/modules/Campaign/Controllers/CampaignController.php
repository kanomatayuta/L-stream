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

use App\Exports\KolExportTiktok;
use App\Exports\KolExportYoutube;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Log;
use Modules\Campaign\Requests\CreateCampaignRequest;
use Modules\Campaign\Requests\UpdateCampaignRequest;
use Modules\Campaign\Resources\CampaignResource;
use Modules\Campaign\Models\Campaign;
use Modules\Campaign\Resources\FormCampaignResource;
use Modules\Campaign\Services\CampaignDetailPostService;
use Modules\Campaign\Services\CampaignService;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Gate;
use App\Http\Controllers\Controller;
use App\Exceptions\DDException;
use App\Exports\KolExport;
use App\Helpers\LogHelper;
use Maatwebsite\Excel\Facades\Excel;
use Modules\Campaign\Requests\ExportKolCSVRequest;
use Modules\Campaign\Services\ReportService;
use Modules\Genre\Resources\GenreResource;
use Modules\Genre\Services\GenreService;
use Modules\Kol\Services\KolService;
use Ramsey\Uuid\Type\Integer;

/**
 * CampaignController class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 *
 * @OA\Tag(
 *     name="Campaign",
 *     description="Campaign Resource",
 * )
 *
 * @OA\Schema(
 *     schema="campaign",
 *     @OA\Property(
 *         property="name",
 *         type="string",
 *         example="Name",
 *     ),
 *     @OA\Property(
 *         property="genre_id",
 *         type="integer",
 *         example=13,
 *     ),
 *     @OA\Property(
 *         property="start_date",
 *         type="dateTime",
 *         example="2022-09-17 16:09:44",
 *     ),
 *     @OA\Property(
 *         property="end_date",
 *         type="dateTime",
 *         example="2022-09-17 16:09:44",
 *     ),
 *     @OA\Property(
 *         property="is_active",
 *         type="boolean",
 *         example=0,
 *     ),
 *     @OA\Property(
 *         property="social_type",
 *         type="integer",
 *         example=0,
 *     ),
 * )
 */
class CampaignController extends Controller
{
    /**
     * Campaign service
     *
     * @var \Modules\Campaign\Services\CampaignService $campaignService Campaign service.
     * @var \Modules\Kol\Services\KolService           $kolService      Kol service.
     * @var \Modules\Genre\Services\GenreService       $genreService    Genre service.
     */
    protected $campaignService;
    protected $kolService;
    protected $reportService;
    protected $campaignDetailPostService;
    protected $genreService;

    /**
     * CampaignService construct
     *
     * @param CampaignService           $campaignService           Campaign service.
     * @param KolService                $kolService                Kol service.
     * @param CampaignDetailPostService $campaignDetailPostService CampaignDetailPostService.
     * @param ReportService             $reportService             ReportService.
     * @param GenreService              $genreService              GenreService.
     */
    public function __construct(
        CampaignService $campaignService,
        KolService $kolService,
        CampaignDetailPostService $campaignDetailPostService,
        ReportService $reportService,
        GenreService $genreService
    )
    {
        $this->campaignService = $campaignService;
        $this->kolService = $kolService;
        $this->reportService = $reportService;
        $this->campaignDetailPostService = $campaignDetailPostService;
        $this->genreService = $genreService;
    }

    /**
     * Display a listing of the resource.
     *
     * @param \Illuminate\Http\Request $request Request info.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/campaign",
     *     tags={"Campaign"},
     *     operationId="indexCampaign",
     *     summary="List Campaign",
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
     *                 @OA\Items(ref="#/components/schemas/campaign")
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
            $campaigns = $this->campaignService->list($input);
            $result = CampaignResource::collection($campaigns);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Modules\Campaign\Requests\CreateCampaignRequest $request Handle store data.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/campaign",
     *     tags={"Campaign"},
     *     operationId="storeCampaign",
     *     summary="Create Campaign",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/campaign"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/campaign",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function store(CreateCampaignRequest $request)
    {
        try {
            $input = $request->all();
            $input['user_id'] = auth()->user()->id;
            $campaign = $this->campaignService->create($input);
            $result = new CampaignResource($campaign);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \Illuminate\Http\Request          $request  Handle request data.
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/campaign/{id}",
     *     tags={"Campaign"},
     *     operationId="showCampaign",
     *     summary="Get Campaign",
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
     *                 ref="#/components/schemas/campaign",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function show(Request $request, Campaign $campaign)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $result['campaign_detail_status_confirming_count'] = $campaign->campaign_detail_status_confirming_count;
            $result['campaign_detail_status_discussing_count'] = $campaign->campaign_detail_status_discussing_count;
            $result['campaign_detail_status_ng_count'] = $campaign->campaign_detail_status_ng_count;
            $result['campaign_detail_status_ok_count'] = $campaign->campaign_detail_status_ok_count;
            $result['campaign_detail_status_pending_count'] = $campaign->campaign_detail_status_pending_count;
            $result['campaign_detail_status_product_sent_count'] = $campaign->campaign_detail_status_product_sent_count;
            $result['campaign_detail_status_waiting_for_draft_count'] = $campaign->campaign_detail_status_waiting_for_draft_count;
            $result['campaign_detail_status_waiting_for_post_count'] = $campaign->campaign_detail_status_waiting_for_post_count;
            $result['campaign_detail_status_waiting_for_insight_count'] = $campaign->campaign_detail_status_waiting_for_insight_count;
            $result['campaign_detail_status_done_count'] = $campaign->campaign_detail_status_done_count;
            $result['campaign_detail_cost'] = $campaign->campaign_detail_cost;
            $kolTabPost = $this->kolService->getKolWithCampaignDetailStatus(config('constant.campaign_status.ok'), $campaign->id);
            $kolListUp = $this->kolService->getKolWithCampaignDetail($campaign->id);
            $kolListUpWithStatusOk = $this->kolService->totalKolStatusOk(config('constant.campaign_status.ok'), $campaign->id);
            $result['total_kol_tab_post'] = $kolTabPost->count();
            $result['total_follower_tab_post'] = $kolTabPost->sum('followers_count');
            $result['total_kol_tab_list'] = $kolListUp->count();
            $result['total_follower_tab_list'] = $kolListUp->sum('followers_count');
            $result['total_kol_status_ok'] = $kolListUpWithStatusOk->count();
            $result['total_follower_status_ok'] = $kolListUpWithStatusOk->sum('followers_count');

            $result['campaigns'] = new CampaignResource($campaign);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Modules\Campaign\Requests\UpdateCampaignRequest $request  Handle update data.
     * @param \Modules\Campaign\Models\Campaign                $campaign Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Put(
     *     path="/api/campaign/{id}",
     *     tags={"Campaign"},
     *     operationId="updateCampaign",
     *     summary="Update Campaign",
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
     *         @OA\JsonContent(ref="#/components/schemas/campaign"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Updated",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/campaign",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function update(UpdateCampaignRequest $request, Campaign $campaign)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $this->campaignService->update($campaign, $input);
            $result = new CampaignResource($campaign);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request          $request  Request info.
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/campaign/active/{id}",
     *     tags={"Campaign"},
     *     operationId="updateActiveCampaign",
     *     summary="Update Active Campaign",
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
     *         @OA\JsonContent(ref="#/components/schemas/campaign"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Updated",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/campaign",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function updateActive(Request $request, Campaign $campaign)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $this->campaignService->update($campaign, $input);
            $result = new CampaignResource($campaign);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Delete(
     *     path="/api/campaign/{id}",
     *     tags={"Campaign"},
     *     operationId="deleteCampaign",
     *     summary="Delete Campaign",
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
    public function destroy(Campaign $campaign)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $result = $this->campaignService->deleteCampaign($campaign->id);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Display a listing of the resource.
     *
     * @param \Illuminate\Http\Request $request Request info.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/campaignActive",
     *     tags={"Campaign"},
     *     operationId="indexCampaign",
     *     summary="List Campaign",
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
     *                 @OA\Items(ref="#/components/schemas/campaign")
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
    public function getCampaignIsActive(Request $request)
    {
        try {
            $input = $request->all();
            $input['user_id'] = auth()->user()->id;
            $input['is_active'] = 1;
            $campaigns = $this->campaignService->list($input);
            $result = CampaignResource::collection($campaigns);


            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request          $request  Request info.
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Put(
     *     path="/api/campaign/updateEndDate/{campaign}",
     *     tags={"Campaign"},
     *     operationId="updateEndDateCampaign",
     *     summary="Update End Date Campaign",
     *     @OA\Parameter(
     *         name="campaign",
     *         in="path",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int64",
     *         ),
     *     ),
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/campaign"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Updated",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/campaign",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function updateEndDate(Request $request, Campaign $campaign)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }

            $input = $request->all();
            if (isset($input['end_date'])) {
                $input['end_date'] = Carbon::parse($input['end_date'])->format('Y-m-d');
            }
            if (isset($input['start_date'])) {
                $input['start_date'] = Carbon::parse($input['start_date'])->format('Y-m-d');
            }
            if ($input['end_date'] >= $input['start_date']) {
                $this->campaignService->update($campaign, $input);
                $result = new CampaignResource($campaign);
                return response()->success($result);
            } else {
                return response()->json(['message' => 'The start date cannot be greater than the end date']);
            }
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request          $request  Request info.
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Put(
     *     path="/api/campaign/updateStartDate/{campaign}",
     *     tags={"Campaign"},
     *     operationId="updateStartDateCampaign",
     *     summary="Update Start Date Campaign",
     *     @OA\Parameter(
     *         name="campaign",
     *         in="path",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int64",
     *         ),
     *     ),
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/campaign"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Updated",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/campaign",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function updateStartDate(Request $request, Campaign $campaign)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            if (isset($input['start_date'])) {
                $input['start_date'] = Carbon::parse($input['start_date'])->format('Y-m-d');
            }
            $today = date("Y-m-d");
            if ($today > $input['start_date']) {
                $this->campaignService->update($campaign, $input);
                $result = new CampaignResource($campaign);
                return response()->success($result);
            } else {
                return response()->json(['message' => 'The start date cannot be greater than the today']);
            }
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Export Kol Campaign CSV
     *
     * @param \Modules\Campaign\Requests\ExportKolCSVRequest $request Handle store data.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/export-kol-csv",
     *     tags={"Campaign"},
     *     operationId="exportKolCampaignCSV",
     *     summary="Export Kol Campaign CSV",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/campaign"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/campaign",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function exportKolCSV(ExportKolCSVRequest $request)
    {
        try {
            if (Gate::denies('export-csv')) {
                $msgCode = (auth()->user() && auth()->user()->plan && auth()->user()->plan->plan_type === config('constant.user_payment.plan_types.free_trial'))
                    ? config('constant.user_payment.plan_errors.free_trial_error')
                    : config('constant.user_payment.plan_errors.export_csv_number_error');
                return response()->json(['message' => 'Access denied', 'message_code' => $msgCode], 403);
            }
            $data = $request->validated();
            $kolCampaigns = $this->campaignService->find($data['campaign_id'])->kols;
            $fileName = config('constant.kol_csv_file_name').$data['campaign_id'].'.csv';
            $campaignID = (int) $data['campaign_id'];
            $social = $this->campaignService->getSocialType($campaignID);
            if ($social === config('constant.campaign_social_type.instagram')) {
                $instance = new KolExport($kolCampaigns);
            } elseif ($social === config('constant.campaign_social_type.youtube')) {
                $instance = new KolExportYoutube($kolCampaigns);
            } else {
                $instance = new KolExportTiktok($kolCampaigns);
            }
            $path = $this->campaignService->downloadCSV($instance, $fileName);

            return response()->download($path)->deleteFileAfterSend(true);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * List campaign
     *
     * @param \Illuminate\Http\Request $request Request info.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/listCampaign",
     *     tags={"Campaign"},
     *     operationId="indexlistCampaign",
     *     summary="List Campaign",
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
     *                 @OA\Items(ref="#/components/schemas/campaign")
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
    public function listCampaign(Request $request)
    {
        try {
            $input = $request->all();
            $input['user_id'] = auth()->user()->id;
            $input['with'] = ['campaign_details', 'campaign_report', 'genre'];
            $input['total_cost'] = true;
            $input['total_reach'] = true;
            $input['campaign_details_count'] = true;
            $input['reach_rate'] = true;
            $input['revenue'] = true;
            $input['roas'] = true;
            $input['genre_name'] = true;
            $campaigns = $this->campaignService->list($input);
            $result = CampaignResource::collection($campaigns);


            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Show campaign in form campaign
     *
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/showCampaign/{id}",
     *     tags={"Campaign"},
     *     operationId="showCampaign",
     *     summary="Get Campaign",
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
     *                 ref="#/components/schemas/campaign",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function showCampaign(Campaign $campaign)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $result = new FormCampaignResource($campaign);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * List genre
     *
     * @param \Illuminate\Http\Request $request Request info.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/listGenre",
     *     tags={"Genre"},
     *     operationId="indexGenre",
     *     summary="List Genre",
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
     *                 @OA\Items(ref="#/components/schemas/genre")
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
    public function listGenre(Request $request)
    {
        try {
            $input = $request->all();
            $input['order_by'] = 'id';
            $input['order_type'] = true;
            $genres = $this->genreService->list($input);
            $result = GenreResource::collection($genres);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }
}
