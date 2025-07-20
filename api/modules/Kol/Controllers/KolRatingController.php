<?php

namespace Modules\Kol\Controllers;

use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use Modules\Kol\Models\KolRating;
use Modules\Kol\Requests\CreateKolRatingRequest;
use Modules\Kol\Requests\UpdateKolRatingRequest;
use Modules\Kol\Resources\KolRatingResource;
use Modules\Kol\Services\KolRatingService;
use Modules\Kol\Models\Kol;
use Modules\User\Models\User;

/**
 * KolRatingController class
 *
 * @category KolRating
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 *
 * @OA\Tag(
 *     name="KolRating",
 *     description="Kol Rating Resource",
 * )
 *
 * @OA\Schema(
 *     schema="kolRating",
 *     @OA\Property(
 *         property="user_id",
 *         type="integer",
 *         example="1",
 *     ),
 *     @OA\Property(
 *         property="kol_id",
 *         type="integer",
 *         example=5,
 *     ),
 *     @OA\Property(
 *         property="rate",
 *         type="integer",
 *         example="1",
 *     ),
 *     @OA\Property(
 *         property="comment",
 *         type="text",
 *         example="Comment",
 *     ),
 * )
 */

class KolRatingController extends Controller
{
    /**
     * @var \Modules\Kol\Services\KolRatingService $kolRatingService KolRatingService.
     */
    protected $kolRatingService;

    /**
     * Admin controller construct.
     *
     * @param KolRatingService $kolRatingService KolRatingService.
     */
    public function __construct(
        KolRatingService $kolRatingService
    )
    {
        $this->kolRatingService = $kolRatingService;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Modules\Kol\Requests\CreateKolRatingRequest $request   Handle store data.
     * @param \Modules\Kol\Models\KolRating                $kolRating KolRating model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Post(
     *     path="/api/kol-rating",
     *     tags={"KolRating"},
     *     operationId="storeKolRating",
     *     summary="Create KolRating",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/kolRating"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Created",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/kolRating",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function store(CreateKolRatingRequest $request, KolRating $kolRating)
    {
        try {
            $input = $request->all();
            $kolRating = $this->kolRatingService->create($input);
            $result = new KolRatingResource($kolRating);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Update kol rating by kol Id and user Id
     *
     * @param UpdateKolRatingRequest    $request Handle kol request data.
     * @param \Modules\Kol\Models\Kol   $kol     Kol model.
     * @param \Modules\User\Models\User $user    User model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Put(
     *     path="/api/kol-rating/{kol}/{user}",
     *     tags={"KolRating"},
     *     operationId="updateKolRating",
     *     summary="Update Kol Rating",
     *     @OA\Parameter(
     *         name="kol",
     *         in="path",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int64",
     *         ),
     *         name="user",
     *         in="path",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int64",
     *         ),
     *     ),
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(ref="#/components/schemas/kolRating"),
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Updated",
     *         @OA\JsonContent(
     *             @OA\Property(
     *                 property="data",
     *                 ref="#/components/schemas/kolRating",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function updateKolRating(UpdateKolRatingRequest $request, Kol $kol, User $user)
    {
        try {
            $input = $request->all();
            $result = $this->kolRatingService->updateKolRating($kol->id, $user->id, $input);

            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }

    /**
     * Get kol rating by kol Id and user Id
     *
     * @param \Modules\Kol\Models\Kol   $kol  Kol model.
     * @param \Modules\User\Models\User $user User model.
     *
     * @return \Illuminate\Http\Response
     *
     * @OA\Get(
     *     path="/api/kol-rating/{kol}/{user}",
     *     tags={"KolRating"},
     *     operationId="showKolRating",
     *     summary="Get KolRating",
     *     @OA\Parameter(
     *         name="kol",
     *         in="path",
     *         required=true,
     *         @OA\Schema(
     *             type="integer",
     *             format="int64",
     *         ),
     *     ),
     *     @OA\Parameter(
     *         name="user",
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
     *                 ref="#/components/schemas/kolRating",
     *             ),
     *         ),
     *     ),
     * )
     */
    public function getKolRating(Kol $kol, User $user)
    {
        try {
            $rating = $this->kolRatingService->getKolRating($kol->id, $user->id);
            $result = new KolRatingResource($rating);
            return response()->success($result);
        } catch (DDException $ex) {
            LogHelper::logTrace($ex);

            return response()->failure($ex->getMessage());
        }
    }
}
