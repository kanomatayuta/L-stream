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

namespace Modules\Kol\Repositories;

use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Builder;
use Modules\Kol\Models\KolRating;
use Carbon\Carbon;

/**
 * KolRepository class
 *
 * @category KolRating
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class KolRatingRepository extends BaseRepository
{
    /**
     * Get KolRating model.
     *
     * @return Modules\Kol\Models\KolRating
     */
    public function getModel()
    {
        return KolRating::class;
    }

    /**
     * Get kol rating by kol_id and user_id
     *
     * @param mixed $kolId  KolId.
     * @param mixed $userId UserId.
     *
     * @return \Illuminate\Support\Collection
     */
    public function getKolRating($kolId, $userId)
    {
        $result = $this->model->where('kol_id', $kolId)
            ->where('user_id', $userId)
            ->firstOrFail();

        return $result;
    }

    /**
     * Update kol rating by kol_id and user_id
     *
     * @param mixed $kolId  KolId.
     * @param mixed $userId UserId.
     * @param mixed $input  Input.
     *
     * @return \Illuminate\Support\Collection
     */
    public function updateKolRating($kolId, $userId, $input)
    {
        $entity = $this->model->where('kol_id', $kolId)
            ->where('user_id', $userId)
            ->firstOrFail();
        return $this->model->where('id', $entity->id)->update($input);
    }
}
