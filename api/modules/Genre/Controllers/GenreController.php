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
namespace Modules\Genre\Controllers;

use Modules\Genre\Requests\CreateGenreRequest;
use Modules\Genre\Requests\UpdateGenreRequest;
use Modules\Genre\Resources\GenreResource;
use Modules\Genre\Models\Genre;
use Modules\Genre\Services\GenreService;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Gate;
use App\Http\Controllers\Controller;
use App\Exceptions\DDException;
use App\Helpers\LogHelper;

/**
 * GenreController class
 *
 * @category Genre
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 *
 * @OA\Tag(
 *     name="Genre",
 *     description="Genre Resource",
 * )
 *
 * @OA\Schema(
 *     schema="genre",
 *     @OA\Property(
 *         property="name",
 *         type="string",
 *         example="name",
 *     ),
 * )
 */
class GenreController extends Controller
{
    /**
     * Genre service
     *
     * @var \Modules\Genre\Services\GenreService $genreService Genre service
     */
    protected $genreService;

    /**
     * GenreService construct
     *
     * @param GenreService $genreService Genre service.
     */
    public function __construct(GenreService $genreService)
    {
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
     *     path="/api/genre",
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
    public function index(Request $request)
    {
        try {
            $input = $request->all();
            $genres = $this->genreService->list($input);
            $result = GenreResource::collection($genres);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Modules\Genre\Requests\CreateGenreRequest $request Handle store data.
     * @param \Modules\Genre\Models\Genre                $genre   Genre model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/genre",
     *     tags={"Genre"},
     *     operationId="storeGenre",
     *     summary="Create Genre",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/genre"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/genre",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function store(CreateGenreRequest $request, Genre $genre)
    {
        try {
            if (Gate::denies('modify', $genre)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $genre = $this->genreService->create($input);
            $result = new GenreResource($genre);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \Illuminate\Http\Request    $request Handle request data.
     * @param \Modules\Genre\Models\Genre $genre   Genre model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/genre/{id}",
     *     tags={"Genre"},
     *     operationId="showGenre",
     *     summary="Get Genre",
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
     *                 ref="#/components/schemas/genre",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function show(Request $request, Genre $genre)
    {
        try {
            if (Gate::denies('modify', $genre)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $input = $request->all();
            $result = new GenreResource($genre);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Modules\Genre\Requests\UpdateGenreRequest $request Handle update data.
     * @param \Modules\Genre\Models\Genre                $genre   Genre model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Put(
     *     path="/api/genre/{id}",
     *     tags={"Genre"},
     *     operationId="updateGenre",
     *     summary="Update Genre",
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
     *         @OA\JsonContent(ref="#/components/schemas/genre"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Updated",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/genre",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function update(UpdateGenreRequest $request, Genre $genre)
    {
        try {
            // if (Gate::denies('modify', $genre)) {
            //     return response()->json(['message' => 'Access denied'], 403);
            // }
            $input = $request->all();
            $this->genreService->update($genre, $input);
            $result = new GenreResource($genre);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \Modules\Genre\Models\Genre $genre Genre model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Delete(
     *     path="/api/genre/{id}",
     *     tags={"Genre"},
     *     operationId="deleteGenre",
     *     summary="Delete Genre",
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
    public function destroy(Genre $genre)
    {
        try {
            if (Gate::denies('modify', $genre)) {
                return response()->json(['message' => 'Access denied'], 403);
            }
            $result = $this->genreService->delete($genre);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }
}
