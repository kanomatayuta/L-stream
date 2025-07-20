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

use Modules\Campaign\Models\Campaign;
use Modules\Campaign\Models\CampaignDetail;
use Modules\Campaign\Requests\CreateCampaignDetailPostRequest;
use Modules\Campaign\Requests\MultiUpdateCampaignDetailPostRequest;
use Modules\Campaign\Requests\UpdateCampaignDetailPostRequest;
use Modules\Campaign\Resources\CampaignDetailPostResource;
use Modules\Campaign\Models\CampaignDetailPost;
use Modules\Campaign\Services\CampaignDetailPostService;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Gate;
use App\Http\Controllers\Controller;
use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use Modules\Campaign\Requests\UpdateCampaignDetailRequest;
use Modules\Kol\Models\Kol;

/**
 * CampaignDetailPostController class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 *
 * @OA\Tag(
 *     name="CampaignDetailPost",
 *     description="CampaignDetailPost Resource",
 * )
 *
 * @OA\Schema(
 *     schema="campaignDetailPost",
 *     @OA\Property(
 *         property="campaign_id",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="kol_id",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="campaign_detail_id",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="post_date",
 *         type="dateTime",
 *         example="2022-09-17 16:09:44",
 *     ),
 *     @OA\Property(
 *         property="post_url",
 *         type="string",
 *         example="post url",
 *     ),
 *     @OA\Property(
 *         property="product_name",
 *         type="string",
 *         example="product name",
 *     ),
 *     @OA\Property(
 *         property="amount_money",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="number_registration",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="regeneration_avg",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="regeneration_pr",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="good_count",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="comment_count",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="normal_eg_rate",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="preg_rate",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="share_count",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="share_rate",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="reaction_count",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="reaction_rate",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="click_count",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="click_rate",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="impression_count",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="impression_rate",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="earning",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="roas",
 *         type="number",
 *         example=1,
 *     ),
 * )
 */
class CampaignDetailPostController extends Controller
{
    /**
     * CampaignDetailPost service
     *
     * @var \Modules\Campaign\Services\CampaignDetailPostService $campaignDetailPostService CampaignDetailPost service.
     */
    protected $campaignDetailPostService;

    /**
     * CampaignDetailPostService construct
     *
     * @param CampaignDetailPostService $campaignDetailPostService CampaignDetailPost service.
     */
    public function __construct(CampaignDetailPostService $campaignDetailPostService)
    {
        $this->campaignDetailPostService = $campaignDetailPostService;
    }

    /**
     * Display a listing of the resource.
     *
     * @param \Illuminate\Http\Request $request Request info.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/campaign-detail-post",
     *     tags={"CampaignDetailPost"},
     *     operationId="indexCampaignDetailPost",
     *     summary="List CampaignDetailPost",
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
     *                 @OA\Items(ref="#/components/schemas/campaignDetailPost")
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
            $campaignDetailPosts = $this->campaignDetailPostService->list($input);
            $result = CampaignDetailPostResource::collection($campaignDetailPosts);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Modules\Campaign\Requests\CreateCampaignDetailPostRequest $request Handle store data.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/campaign/detail/post",
     *     tags={"CampaignDetailPost"},
     *     operationId="storeCampaignDetailPost",
     *     summary="Create CampaignDetailPost",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/campaignDetailPost"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/campaignDetailPost",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function store(CreateCampaignDetailPostRequest $request)
    {
        try {
            $input = $request->all();
            $campaignDetailPost = $this->campaignDetailPostService->create($input);
            $result = new CampaignDetailPostResource($campaignDetailPost);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \Illuminate\Http\Request                    $request            Handle request data.
     * @param \Modules\Campaign\Models\CampaignDetailPost $campaignDetailPost CampaignDetailPost model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/campaign/detail/post/{id}",
     *     tags={"CampaignDetailPost"},
     *     operationId="showCampaignDetailPost",
     *     summary="Get CampaignDetailPost",
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
     *                 ref="#/components/schemas/campaignDetailPost",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function show(Request $request, CampaignDetailPost $campaignDetailPost)
    {
        try {
            if (Gate::denies('modify', $campaignDetailPost)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $result = new CampaignDetailPostResource($campaignDetailPost);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Modules\Campaign\Requests\UpdateCampaignDetailPostRequest $request            Handle update data.
     * @param \Modules\Campaign\Models\CampaignDetailPost                $campaignDetailPost CampaignDetailPost model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Put(
     *     path="/api/campaign/detail/post/{id}",
     *     tags={"CampaignDetailPost"},
     *     operationId="updateCampaignDetailPost",
     *     summary="Update CampaignDetailPost",
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
     *         @OA\JsonContent(ref="#/components/schemas/campaignDetailPost"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Updated",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/campaignDetailPost",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function update(UpdateCampaignDetailPostRequest $request, CampaignDetailPost $campaignDetailPost)
    {
        try {
            if (Gate::denies('modify', $campaignDetailPost)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $this->campaignDetailPostService->update($campaignDetailPost, $input);
            $result = new CampaignDetailPostResource($campaignDetailPost);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \Modules\Campaign\Models\CampaignDetailPost $campaignDetailPost CampaignDetailPost model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Delete(
     *     path="/api/campaign-detail-post/{id}",
     *     tags={"CampaignDetailPost"},
     *     operationId="deleteCampaignDetailPost",
     *     summary="Delete CampaignDetailPost",
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
    public function destroy(CampaignDetailPost $campaignDetailPost)
    {
        try {
            if (Gate::denies('modify', $campaignDetailPost)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $result = $this->campaignDetailPostService->delete($campaignDetailPost);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Multi Update the specified resource in storage.
     *
     * @param \Modules\Campaign\Requests\MultiUpdateCampaignDetailPostRequest $request  Handle update data.
     * @param \Modules\Campaign\Models\Campaign                               $campaign Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/campaign-detail-post/multiUpdate/{campaign}",
     *     tags={"CampaignDetailPost"},
     *     operationId="multiUpdateCampaignDetailPost",
     *     summary="Multi Update CampaignDetailPost",
     *      @OA\Parameter(
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
     *         @OA\JsonContent(ref="#/components/schemas/campaignDetailPost"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/campaignDetailPost",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function multiUpdate(MultiUpdateCampaignDetailPostRequest $request, Campaign $campaign)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $data = $request->all();
            $result = $this->campaignDetailPostService->multiUpdate($data, $campaign);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Get Campaign Detail Post By Type
     *
     * @param mixed                             $type     Report type.
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/campaign-detail-post/report/{type}/{campaign}",
     *     tags={"CampaignDetailPost"},
     *     operationId="getCampaignDetailPostByType",
     *     summary="Get CampaignDetailPost",
     *     @OA\Parameter(
     *         name="type",
     *         in="path",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int64",
     *         ),
     *     ),
     *      @OA\Parameter(
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
     *                 ref="#/components/schemas/campaignDetailPost",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function getDetailPost($type, Campaign $campaign)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $campaignDetailPosts = $this->campaignDetailPostService->findDetailPost($type, $campaign);
            $result = CampaignDetailPostResource::collection($campaignDetailPosts);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/showCampaignAuto/{campaign}",
     *     tags={"CampaignDetailPost"},
     *     operationId="showCampaignAuto",
     *     summary="Get CampaignDetailPost",
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
     *                 ref="#/components/schemas/campaignDetailPost",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function showCampaignAuto(Campaign $campaign)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $data = $this->campaignDetailPostService->getCampaignReportByCampaignId($campaign);
            return response()->success($data);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/showCampaignTiktokAuto/{campaign}",
     *     tags={"CampaignDetailPost"},
     *     operationId="showCampaignTiktokAuto",
     *     summary="Get CampaignDetailPost",
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
     *                 ref="#/components/schemas/campaignDetailPost",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function showCampaignTiktokAuto(Campaign $campaign)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $data = $this->campaignDetailPostService->getCampaignTiktokReportByCampaignId($campaign);
            return response()->success($data);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/showCampaignYoutubeAuto/{campaign}",
     *     tags={"CampaignDetailPost"},
     *     operationId="showCampaignYoutubeAuto",
     *     summary="Get CampaignDetailPost",
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
     *                 ref="#/components/schemas/campaignDetailPost",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function showCampaignYoutubeAuto(Campaign $campaign)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $data = $this->campaignDetailPostService->getCampaignYoutubeReportByCampaignId($campaign);
            return response()->success($data);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Get Campaign Detail Post By CampaignDetail
     *
     * @param mixed $campaignDetail CampaignDetail.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/campaignDetailPost/{campaignDetail}",
     *     tags={"CampaignDetailPost"},
     *     operationId="getCampaignDetailPostByCampaignDetail",
     *     summary="Get CampaignDetailPost",
     *     @OA\Parameter(
     *         name="type",
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
     *                 ref="#/components/schemas/campaignDetailPost",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function getCampaignDetailPost($campaignDetail)
    {
        try {
            $campaignDetailPosts = $this->campaignDetailPostService->findRecord($campaignDetail);
            $result = CampaignDetailPostResource::collection($campaignDetailPosts);

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
     * @OA\Post(
     *     path="/campaignDetailPost/update-cost/{campaignDetail}",
     *     tags={"CampaignDetailPost"},
     *     operationId="updateCampaignDetailPost",
     *     summary="Update CampaignDetailPost",
     *     @OA\Parameter(
     *         name="campaignDetail",
     *         in="path",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int64",
     *         ),
     *     ),
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/campaignDetailPost"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Updated",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/campaignDetailPost",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function updateCost(UpdateCampaignDetailRequest $request, CampaignDetail $campaignDetail)
    {
        try {
            if (Gate::denies('modify', $campaignDetail)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $data = $this->campaignDetailPostService->updateCost($campaignDetail, $input);
            $result = CampaignDetailPostResource::collection($data);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Get Campaign Detail Post with Campaign Social Type
     *
     * @param \Illuminate\Http\Request                    $request            Request info.
     * @param \Modules\Campaign\Models\Campaign           $campaign           Campaign model.
     * @param \Modules\Campaign\Models\CampaignDetailPost $campaignDetailPost CampaignDetailPost model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/campaign-detail-post/detail-record/{campaign}",
     *     tags={"CampaignDetailPost"},
     *     operationId="getCampaignDetailPost",
     *     summary="Get CampaignDetailPost",
     *      @OA\Parameter(
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
     *                 ref="#/components/schemas/campaignDetailPost",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function getRecord(Request $request, Campaign $campaign, CampaignDetailPost $campaignDetailPost)
    {
        try {
            if (Gate::denies('modify', $campaignDetailPost)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $input['campaign_id'] = $campaign->id;
            $campaignDetailPosts = $this->campaignDetailPostService->list($input);
            $result = CampaignDetailPostResource::collection($campaignDetailPosts);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Create Campaign Detail Post with Campaign Social Type
     *
     * @param \Illuminate\Http\Request          $request  Request info.
     * @param \Modules\Campaign\Models\Campaign $campaign Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/campaignDetailPost/create-post/{campaign}",
     *     tags={"createPostYoutube"},
     *     operationId="createPostYoutube",
     *     summary="Create post Youtube",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/campaignDetailPost"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/campaignDetailPost",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function createPostYoutube(Request $request, Campaign $campaign)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $input['campaign_id'] = $campaign->id;
            $campaignDetailPost = $this->campaignDetailPostService->create($input);
            $result = new CampaignDetailPostResource($campaignDetailPost);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }
}
