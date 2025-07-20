<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0
 *
 * @category  Web
 * @package   Web_System
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 * @version   GIT: <1.0.0>
 * @link      https://digidinos.com
 * @see       https://digidinos.com
 **/
namespace Modules\Kol\Controllers;

use Modules\Campaign\Models\CampaignDetail;
use Modules\Campaign\Services\CampaignDetailService;
use Modules\Kol\Requests\CreateKolRequest;
use Modules\Kol\Requests\UpdateKolRequest;
use Modules\Kol\Resources\KolResource;
use Modules\Kol\Models\Kol;
use Modules\Kol\Services\KolService;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Gate;
use App\Http\Controllers\Controller;
use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use App\Services\SnsService;
use Illuminate\Support\Facades\Log;
use Modules\Campaign\Services\CampaignService;
use Modules\Kol\Requests\ReportKolRequest;
use Modules\Kol\Requests\SearchKolRequest;
use App\Services\UsernameSuggesterService;
use Illuminate\Support\Carbon;

/**
 * KolController class
 *
 * @category Kol
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 *
 * @OA\Tag(
 *     name="Kol",
 *     description="Kol Resource",
 * )
 *
 * @OA\Schema(
 *     schema="kol",
 *     @OA\Property(
 *         property="avatar_url",
 *         type="string",
 *         example="Avatar url",
 *     ),
 *     @OA\Property(
 *         property="comment_avg",
 *         type="decimal",
 *         example=5,
 *     ),
 *     @OA\Property(
 *         property="description",
 *         type="string",
 *         example="Description",
 *     ),
 *     @OA\Property(
 *         property="engagement_count",
 *         type="decimal",
 *         example=5.3,
 *     ),
 *     @OA\Property(
 *         property="engagement_rate",
 *         type="decimal",
 *         example=1.5,
 *     ),
 *     @OA\Property(
 *         property="followers_count",
 *         type="decimal",
 *         example=4.1,
 *     ),
 *     @OA\Property(
 *         property="full_name",
 *         type="string",
 *         example="Full name",
 *     ),
 *     @OA\Property(
 *         property="like_avg",
 *         type="decimal",
 *         example=5.7,
 *     ),
 *     @OA\Property(
 *         property="posts_count",
 *         type="decimal",
 *         example=6.9,
 *     ),
 *     @OA\Property(
 *         property="social_id",
 *         type="integer",
 *         example=119,
 *     ),
 *     @OA\Property(
 *         property="social_type",
 *         type="boolean",
 *         example=true,
 *     ),
 *     @OA\Property(
 *         property="username",
 *         type="string",
 *         example="Username",
 *     ),
 * )
 */
class KolController extends Controller
{
    /**
     * Kol service.
     *
     * @var \Modules\Kol\Services\KolService $kolService Kol service
     */
    protected $kolService;

    /**
     * CampaignDetail service
     *
     * @var \Modules\Campaign\Services\CampaignDetailService $campaignDetailService CampaignDetail service
     */
    protected $campaignDetailService;

    /**
     * Sns service.
     *
     * @var \Modules\Kol\Services\SnsService $snsService Sns service
     */
    protected $snsService;

    protected $campaignService;

    /**
     * Username Suggester Service
     *
     * @var \App\Services\UsernameSuggesterService $usernameSuggesterService Username Suggester Service
     */
    protected $usernameSuggesterService;

    /**
     * KolService construct
     *
     * @param KolService               $kolService               Kol service.
     * @param SnsService               $snsService               Instagram service.
     * @param CampaignService          $campaignService          Campaign service.
     * @param CampaignDetailService    $campaignDetailService    Campaign detail service.
     * @param UsernameSuggesterService $usernameSuggesterService Username Suggester Service.
     */
    public function __construct(
        KolService $kolService,
        SnsService $snsService,
        CampaignService $campaignService,
        CampaignDetailService $campaignDetailService,
        UsernameSuggesterService $usernameSuggesterService
    )
    {
        $this->kolService = $kolService;
        $this->snsService = $snsService;
        $this->campaignService = $campaignService;
        $this->campaignDetailService = $campaignDetailService;
        $this->usernameSuggesterService = $usernameSuggesterService;
    }

    /**
     * Display a listing of the resource.
     *
     * @param \Illuminate\Http\Request $request Request info.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/kol",
     *     tags={"Kol"},
     *     operationId="indexKol",
     *     summary="List Kol",
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
     *                 @OA\Items(ref="#/components/schemas/kol")
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
            $input['with'] = ['ratings', 'tags', 'campaigns', 'followers'];
            $kols = $this->kolService->list($input);
            $result = KolResource::collection($kols);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Modules\Kol\Requests\CreateKolRequest $request Handle store data.
     * @param \Modules\Kol\Models\Kol                $kol     Kol model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/kol",
     *     tags={"Kol"},
     *     operationId="storeKol",
     *     summary="Create Kol",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/kol"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/kol",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function store(CreateKolRequest $request, Kol $kol)
    {
        try {
            $input = $request->all();
            $kol = $this->kolService->create($input);
            $result = new KolResource($kol);

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
     * @param \Modules\Kol\Models\Kol  $kol     Kol model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/kol/{id}",
     *     tags={"Kol"},
     *     operationId="showKol",
     *     summary="Get Kol",
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
     *                 ref="#/components/schemas/kol",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function show(Request $request, Kol $kol)
    {
        try {
            $input = $request->all();
            $result = new KolResource($kol);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Modules\Kol\Requests\UpdateKolRequest $request Handle update data.
     * @param \Modules\Kol\Models\Kol                $kol     Kol model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Put(
     *     path="/api/kol/{id}",
     *     tags={"Kol"},
     *     operationId="updateKol",
     *     summary="Update Kol",
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
     *         @OA\JsonContent(ref="#/components/schemas/kol"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Updated",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/kol",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function update(UpdateKolRequest $request, Kol $kol)
    {
        try {
            $input = $request->all();
            $this->kolService->update($kol, $input);
            $result = new KolResource($kol);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \Modules\Kol\Models\Kol $kol Kol model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Delete(
     *     path="/api/kol/{id}",
     *     tags={"Kol"},
     *     operationId="deleteKol",
     *     summary="Delete Kol",
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
    public function destroy(Kol $kol)
    {
        try {
            $result = $this->kolService->destroy($kol);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Display a listing of the resource.
     *
     * @param Modules\Kol\Requests\SearchKolRequest $request Request info.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/kol/search",
     *     tags={"Kol"},
     *     operationId="searchKol",
     *     summary="Search Kol From HypeAuditor",
     *     @OA\Parameter(
     *         name="social_type",
     *         in="query",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int64",
     *         ),
     *     ),
     *     @OA\Parameter(
     *         name="keywords",
     *         in="query",
     *         @OA\Schema(
     *             type="array",
     *             @OA\Items(ref="#/components/schemas/kol")
     *         ),
     *     ),
     *     @OA\Parameter(
     *         name="subscribers_count",
     *         in="query",
     *         @OA\Schema(
     *             type="object",
     *             format="int64",
     *         ),
     *     ),
     *     @OA\Parameter(
     *         name="er",
     *         in="query",
     *         @OA\Schema(
     *             type="object",
     *             format="int64",
     *         ),
     *     ),
     *     @OA\Parameter(
     *         name="account_mentions",
     *         in="query",
     *         @OA\Schema(
     *             type="object",
     *         ),
     *     ),
     *     @OA\Parameter(
     *         name="category",
     *         in="query",
     *         @OA\Schema(
     *             type="array",
     *             @OA\Items(ref="#/components/schemas/kol")
     *         ),
     *     ),
     *     @OA\Parameter(
     *         name="audience_geo",
     *         in="query",
     *         @OA\Schema(
     *             type="array",
     *             @OA\Items(ref="#/components/schemas/kol")
     *         ),
     *     ),
     *     @OA\Parameter(
     *         name="audience_gender",
     *         in="query",
     *         @OA\Schema(
     *             type="object",
     *         ),
     *     ),
     *     @OA\Parameter(
     *         name="audience_age",
     *         in="query",
     *         @OA\Schema(
     *             type="object",
     *         ),
     *     ),
     *     @OA\Parameter(
     *         name="aqs",
     *         in="query",
     *         @OA\Schema(
     *             type="object",
     *             format="float"
     *         ),
     *     ),
     *     @OA\Parameter(
     *         name="interests",
     *         in="query",
     *         @OA\Schema(
     *             type="array of objects",
     *         ),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Listed",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 type="array",
     *                 @OA\Items(ref="#/components/schemas/kol")
     *             )
     *         ),
     *     ),
     * )
     */
    public function search(SearchKolRequest $request)
    {
        try {
            if (Gate::denies('kol-search')) {
                $msgCode = (auth()->user() && auth()->user()->plan && auth()->user()->plan->plan_type === config('constant.user_payment.plan_types.free_trial'))
                    ? config('constant.user_payment.plan_errors.free_trial_error')
                    : config('constant.user_payment.plan_errors.page_search_number_error');
                return response()->json(['message' => 'Access denied', 'message_code' => $msgCode], 403);
            }
            $conds = $request->all();
            if (isset($conds['campaign'])) {
                $conds['kol_exclude'] = $this->campaignService->getKolByCampaign($conds['campaign']);
            } elseif (isset($conds['campaigns'])) {
                $conds['kol_exclude'] = $this->campaignService->getKolByCampaigns(json_decode($conds['campaigns']));
            }

            if (isset($conds['last_media_time'])) {
                $conds['last_media_time'] = Carbon::now()->subMonths($conds['last_media_time'])->timestamp;
            }

            $social_type = $conds['social_type'] ?? null;
            if ($social_type) {
                $service = $this->snsService->createService($social_type);
                unset($conds['social_type']);
                $kols = $service->search($conds);
                $result = $this->kolService->getKolTags($kols);

                return response()->success($result);
            }

            return response()->failure('Invalid params', 403);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);
            $code = $ex->getCode() ?? 500;

            return response()->failure($ex->getMessage(), $code);
        }
    }

    /**
     * Display a listing of the resource.
     *
     * @param Modules\Kol\Requests\ReportKolRequest $request Request info.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/kol/report",
     *     tags={"Kol"},
     *     operationId="reportKol",
     *     summary="Report Kol Result From HypeAuditor",
     *     @OA\Parameter(
     *         name="social_type",
     *         in="query",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int64",
     *         ),
     *     ),
     *     @OA\Parameter(
     *         name="username",
     *         in="query",
     *         required=true,
     *         @OA\Schema(
     *             type="string"
     *         ),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Listed",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 type="array",
     *                 @OA\Items(ref="#/components/schemas/kol")
     *             )
     *         ),
     *     ),
     * )
     */
    public function report(ReportKolRequest $request)
    {
        try {
            if (Gate::denies('kol-report')) {
                $msgCode = (auth()->user() && auth()->user()->plan && auth()->user()->plan->plan_type === config('constant.user_payment.plan_types.free_trial'))
                    ? config('constant.user_payment.plan_errors.free_trial_error')
                    : config('constant.user_payment.plan_errors.profile_view_number_error');
                return response()->json(['message' => 'Access denied', 'message_code' => $msgCode], 403);
            }
            $conds = $request->all();
            $social_type = $conds['social_type'] ?? null;
            if ($social_type) {
                $service = $this->snsService->createService($social_type);
                unset($conds['social_type']);

                return response()->success($service->report($conds));
            }

            return response()->failure('Invalid params', 403);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);
            $code = $ex->getCode() ?? 500;

            return response()->failure($ex->getMessage(), $code);
        }
    }

    /**
     * Display a listing of the resource.
     *
     * @param Kol                      $kol     Kol info.
     * @param \Illuminate\Http\Request $request Handle store data.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/listKolInCampaign",
     *     tags={"Kol"},
     *     operationId="indexlistKolInCampaign",
     *     summary="List Kol in campaign",
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
     *                 @OA\Items(ref="#/components/schemas/kol")
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
    public function listKolInCampaign(Kol $kol, Request $request)
    {
        try {
            $input = $request->all();
            $input['ids'] = $this->campaignDetailService->filterInsightListKol($input['social_type'])->pluck('kol_id');

            $input = $this->transformInsightListSearchCampaignDetailFeed($input);
            $input = $this->transformInsightListSearchCampaignDetailStory($input);
            $input = $this->transformInsightListSearchCampaignDetailReel($input);
            $input = $this->transformYoutubeInsightListDetailSearch($input);
            $input = $this->transformTiktokInsightListDetailSearch($input);
            $data = $this->kolService->list($input);
            $result = KolResource::collection($data);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Transform Insigt List Search Tiktok
     *
     * @param mixed $input Input.
     *
     * @return mixed $input Input.
     */
    protected function transformTiktokInsightListDetailSearch($input)
    {
        $data = [];
        if (isset($input['tiktok_share_rate']) && $input['tiktok_share_rate']) {
            $data['tiktok_share_rate'] = $input['tiktok_share_rate'];
        }

        if (isset($input['tiktok_engagement_rate']) && $input['tiktok_engagement_rate']) {
            $data['tiktok_engagement_rate'] = $input['tiktok_engagement_rate'];
        }

        if (isset($input['tiktok_roas']) && $input['tiktok_roas']) {
            $data['tiktok_roas'] = $input['tiktok_roas'];
        }

        if (!empty($data)) {
            $input['tiktok_campaign_details'] = $data;
        }

        return $input;
    }

    /**
     * Transform Insigt List Search YouTube
     *
     * @param mixed $input Input.
     *
     * @return mixed $input Input.
     */
    protected function transformYoutubeInsightListDetailSearch($input)
    {
        $data = [];
        if (isset($input['youtube_click_rate']) && $input['youtube_click_rate']) {
            $data['youtube_click_rate'] = $input['youtube_click_rate'];
        }

        if (isset($input['youtube_conversion_rate']) && $input['youtube_conversion_rate']) {
            $data['youtube_conversion_rate'] = $input['youtube_conversion_rate'];
        }

        if (isset($input['youtube_engagement_detail_rate']) && $input['youtube_engagement_detail_rate']) {
            $data['youtube_engagement_detail_rate'] = $input['youtube_engagement_detail_rate'];
        }

        if (isset($input['youtube_roas']) && $input['youtube_roas']) {
            $data['youtube_roas'] = $input['youtube_roas'];
        }

        if (!empty($data)) {
            $input['youtube_campaign_details'] = $data;
        }

        return $input;
    }

    /**
     * Transform Insigt List Search Campaign Detail Feed
     *
     * @param mixed $input Input.
     *
     * @return mixed $input Input.
     */
    private function transformInsightListSearchCampaignDetailFeed($input)
    {
        $campaignDetails = [];

        if (isset($input['total_research']) && $input['total_research']) {
            $campaignDetails['total_research'] = $input['total_research'];
        }

        if (isset($input['ratio_research']) && $input['ratio_research']) {
            $campaignDetails['ratio_research'] = $input['ratio_research'];
        }

        if (isset($input['number_saves']) && $input['number_saves']) {
            $campaignDetails['number_saves'] = $input['number_saves'];
        }

        if (isset($input['ratio_saves']) && $input['ratio_saves']) {
            $campaignDetails['ratio_saves'] = $input['ratio_saves'];
        }

        if (isset($input['engagement_rate_feed']) && $input['engagement_rate_feed']) {
            $campaignDetails['engagement_rate_feed'] = $input['engagement_rate_feed'];
        }

        if (isset($input['roas']) && $input['roas']) {
            $campaignDetails['roas'] = $input['roas'];
        }

        if (!empty($campaignDetails)) {
            $input['campaign_details_feed'] = $campaignDetails;
        }
        return $input;
    }

    /**
     * Transform Insigt List Search Campaign Detail Story
     *
     * @param mixed $input Input.
     *
     * @return mixed $input Input.
     */
    private function transformInsightListSearchCampaignDetailStory($input)
    {
        $campaignDetails = [];

        if (isset($input['story_roas']) && $input['story_roas']) {
            $campaignDetails['story_roas'] = $input['story_roas'];
        }

        if (isset($input['number_impressions']) && $input['number_impressions']) {
            $campaignDetails['number_impressions'] = $input['number_impressions'];
        }

        if (isset($input['ratio_impressions']) && $input['ratio_impressions']) {
            $campaignDetails['ratio_impressions'] = $input['ratio_impressions'];
        }

        if (isset($input['number_click']) && $input['number_click']) {
            $campaignDetails['number_click'] = $input['number_click'];
        }

        if (isset($input['ratio_click']) && $input['ratio_click']) {
            $campaignDetails['ratio_click'] = $input['ratio_click'];
        }

        if (isset($input['number_reaction']) && $input['number_reaction']) {
            $campaignDetails['number_reaction'] = $input['number_reaction'];
        }

        if (isset($input['ratio_reaction']) && $input['ratio_reaction']) {
            $campaignDetails['ratio_reaction'] = $input['ratio_reaction'];
        }

        if (!empty($campaignDetails)) {
            $input['campaign_details_story'] = $campaignDetails;
        }
        return $input;
    }

    /**
     * Transform Insigt List Search Campaign Detail Reel
     *
     * @param mixed $input Input.
     *
     * @return mixed $input Input.
     */
    private function transformInsightListSearchCampaignDetailReel($input)
    {
        $campaignDetails = [];

        if (isset($input['total_research_reel']) && $input['total_research_reel']) {
            $campaignDetails['total_research_reel'] = $input['total_research_reel'];
        }

        if (isset($input['ratio_research_reel']) && $input['ratio_research_reel']) {
            $campaignDetails['ratio_research_reel'] = $input['ratio_research_reel'];
        }

        if (isset($input['number_saves_reel']) && $input['number_saves_reel']) {
            $campaignDetails['number_saves_reel'] = $input['number_saves_reel'];
        }

        if (isset($input['ratio_saves_reel']) && $input['ratio_saves_reel']) {
            $campaignDetails['ratio_saves_reel'] = $input['ratio_saves_reel'];
        }

        if (isset($input['engagement_rate_reel']) && $input['engagement_rate_reel']) {
            $campaignDetails['engagement_rate_reel'] = $input['engagement_rate_reel'];
        }

        if (isset($input['roas_reel']) && $input['roas_reel']) {
            $campaignDetails['roas_reel'] = $input['roas_reel'];
        }

        if (!empty($campaignDetails)) {
            $input['campaign_details_reel'] = $campaignDetails;
        }
        return $input;
    }

    /**
     * Get suggest kol by username
     *
     * @param \Illuminate\Http\Request $request Request data.
     * @return mixed
     */
    public function suggestUsername(Request $request)
    {
        try {
            $input = $request->all();
            $input['search'] = $input['search'] ?? '';
            $social_type = $input['st'] ?? null;
            if ($social_type) {
                $result = $this->usernameSuggesterService->suggest($input);

                return response()->success($result);
            }
            return response()->failure('Invalid params', 403);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);
            $code = $ex->getCode() ?? 500;

            return response()->failure($ex->getMessage(), $code);
        }
    }
}
