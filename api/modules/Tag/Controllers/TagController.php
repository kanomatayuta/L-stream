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
namespace Modules\Tag\Controllers;

use Modules\Tag\Requests\CreateTagRequest;
use Modules\Tag\Requests\UpdateTagRequest;
use Modules\Tag\Resources\TagResource;
use Modules\Tag\Models\Tag;
use Modules\Tag\Services\TagService;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Gate;
use App\Http\Controllers\Controller;
use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use Modules\Tag\Requests\CreateKolTagRequest;
use Modules\Tag\Requests\GetKolTagRequest;

/**
 * TagController class
 *
 * @category Tag
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 *
 * @OA\Tag(
 *     name="Tag",
 *     description="Tag Resource",
 * )
 *
 * @OA\Schema(
 *     schema="tag",
 *     @OA\Property(
 *         property="user_id",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="kol_id",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="campaign_id",
 *         type="number",
 *         example=1,
 *     ),
 *     @OA\Property(
 *         property="hash_tags",
 *         type="number",
 *         example=1,
 *     ),
 * )
 */
class TagController extends Controller
{
    /**
     * @var \Modules\Tag\Services\TagService $tagService Tag service
     */
    protected $tagService;

    /**
     * TagService construct
     *
     * @param TagService $tagService Tag service.
     */
    public function __construct(TagService $tagService)
    {
        $this->tagService = $tagService;
    }

    /**
     * Display a listing of the resource.
     *
     * @param \Illuminate\Http\Request $request Request info.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/tag",
     *     tags={"Tag"},
     *     operationId="indexTag",
     *     summary="List Tag",
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
     *                 @OA\Items(ref="#/components/schemas/tag")
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
            $input['with'] = ['kols'];
            $input['user_id'] = auth()->user()->id;
            $tags = $this->tagService->list($input);
            $result = TagResource::collection($tags);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Modules\Tag\Requests\CreateTagRequest $request Handle store data.
     * @param \Modules\Tag\Models\Tag                $tag     Tag model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/tag",
     *     tags={"Tag"},
     *     operationId="storeTag",
     *     summary="Create Tag",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/tag"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/tag",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function store(CreateTagRequest $request, Tag $tag)
    {
        try {
            $input = $request->validated();
            $input['user_id'] = auth()->user()->id;
            $tag = $this->tagService->create($input);
            $result = new TagResource($tag);

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
     * @param \Modules\Tag\Models\Tag  $tag     Tag model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/tag/{id}",
     *     tags={"Tag"},
     *     operationId="showTag",
     *     summary="Get Tag",
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
     *                 ref="#/components/schemas/tag",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function show(Request $request, Tag $tag)
    {
        try {
            if (Gate::denies('modify', $tag)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $result = new TagResource($tag);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Modules\Tag\Requests\UpdateTagRequest $request Handle update data.
     * @param \Modules\Tag\Models\Tag                $tag     Tag model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Put(
     *     path="/api/tag/{id}",
     *     tags={"Tag"},
     *     operationId="updateTag",
     *     summary="Update Tag",
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
     *         @OA\JsonContent(ref="#/components/schemas/tag"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Updated",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/tag",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function update(UpdateTagRequest $request, Tag $tag)
    {
        try {
            if (Gate::denies('modify', $tag)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $this->tagService->update($tag, $input);
            $result = new TagResource($tag);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \Modules\Tag\Models\Tag $tag Tag model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Delete(
     *     path="/api/tag/{id}",
     *     tags={"Tag"},
     *     operationId="deleteTag",
     *     summary="Delete Tag",
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
    public function destroy(Tag $tag)
    {
        try {
            if (Gate::denies('modify', $tag)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $result = $this->tagService->delete($tag);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Modules\Tag\Requests\CreateKolTagRequest $createKolTagRequest Create Kol Tag Request.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/create-kol-tag",
     *     tags={"Tag"},
     *     operationId="createKolTag",
     *     summary="Create Tag",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/tag"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/tag",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function createKolTag(CreateKolTagRequest $createKolTagRequest)
    {
        try {
            $input = $createKolTagRequest->validated();
            $kolTag = $this->tagService->createKolTag($input);

            return response()->success($kolTag);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }
}
