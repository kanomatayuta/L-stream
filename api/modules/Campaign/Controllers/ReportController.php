<?php

namespace Modules\Campaign\Controllers;

use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use App\Http\Controllers\Controller;
use Modules\Campaign\Models\Campaign;
use Modules\Campaign\Models\TabReport;
use Modules\Campaign\Requests\CreateCampaignReportRequest;
use Modules\Campaign\Requests\UpdateCampaignReportRequest;
use Modules\Campaign\Resources\ReportResource;
use Modules\Campaign\Services\CampaignDetailPostService;
use Modules\Campaign\Services\ReportService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;

class ReportController extends Controller
{
    /**
     * Report service
     *
     * @var \Modules\Campaign\Services\ReportService             $reportService             Report service.
     * @var \Modules\Campaign\Services\CampaignDetailPostService $campaignDetailPostService CampaignDetailPost service.
     */
    protected $reportService;
    protected $campaignDetailPostService;

    /**
     * ReportService construct
     *
     * @param ReportService             $reportService             Report service.
     * @param CampaignDetailPostService $campaignDetailPostService CampaignDetailPostService.
     */
    public function __construct(
        ReportService $reportService,
        CampaignDetailPostService $campaignDetailPostService
    )
    {
        $this->reportService = $reportService;
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
     *     path="/api/campaignReport",
     *     tags={"campaignReport"},
     *     operationId="indexcampaignReport",
     *     summary="List campaignReport",
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
            $campaigns = $this->reportService->list($input);
            $result = ReportResource::collection($campaigns);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Modules\Campaign\Requests\CreateCampaignReportRequest $request Handle store data.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/campaignReport",
     *     tags={"campaignReport"},
     *     operationId="storecampaignReport",
     *     summary="Create Campaign Report",
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
    public function store(CreateCampaignReportRequest $request)
    {
        try {
            $input = $request->all();
            $campaign = $this->reportService->create($input);
            $result = new ReportResource($campaign);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \Illuminate\Http\Request           $request        Handle request data.
     * @param \Modules\Campaign\Models\TabReport $campaignReport Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/campaignReport/{id}",
     *     tags={"campaignReport"},
     *     operationId="showcampaignReport",
     *     summary="Get Campaign Report",
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
    public function show(Request $request, TabReport $campaignReport)
    {
        try {
            if (Gate::denies('modify', $campaignReport)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $result = new ReportResource($campaignReport);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Modules\Campaign\Requests\UpdateCampaignReportRequest $request        Handle update data.
     * @param \Modules\Campaign\Models\TabReport                     $campaignReport Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Put(
     *     path="/api/campaignReport/{id}",
     *     tags={"campaignReport"},
     *     operationId="updatecampaignReport",
     *     summary="Update Campaign Report",
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
    public function update(UpdateCampaignReportRequest $request, TabReport $campaignReport)
    {
        try {
            if (Gate::denies('modify', $campaignReport)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $this->reportService->update($campaignReport, $input);
            $result = new ReportResource($campaignReport);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \Modules\Campaign\Models\TabReport $campaignReport Campaign report model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Delete(
     *     path="/api/campaignReport/{id}",
     *     tags={"campaignReport"},
     *     operationId="deletecampaignReport",
     *     summary="Delete Campaign Report",
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
    public function destroy(TabReport $campaignReport)
    {
        try {
            if (Gate::denies('modify', $campaignReport)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $result = $this->reportService->delete($campaignReport);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Show campaign
     *
     * @param integer $campaign Campaign Id.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/campaignReportShow/{campaign}",
     *     tags={"campaignReport"},
     *     operationId="campaignReportShow",
     *     summary="Get Campaign Report",
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
     *                 ref="#/components/schemas/campaign",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function showCampaignReport(int $campaign)
    {
        try {
            $data = $this->reportService->showCampaignReport($campaign);
            $result = ReportResource::collection($data);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Modules\Campaign\Requests\UpdateCampaignReportRequest $request  Handle update data.
     * @param \Modules\Campaign\Models\Campaign                      $campaign Campaign model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Put(
     *     path="/api/campaignReportUpdate/{campaign}",
     *     tags={"campaignReport"},
     *     operationId="campaignReportUpdate",
     *     summary="Update Campaign Report",
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
    public function updateCampaignReport(UpdateCampaignReportRequest $request, Campaign $campaign)
    {
        try {
            if (Gate::denies('modify', $campaign)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $result = $this->reportService->updateCampaignReport($campaign->id, $input);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }
}
