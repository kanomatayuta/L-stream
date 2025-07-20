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

namespace Modules\Kol\Services;

use App\Services\BaseService;
use Modules\Kol\Repositories\KolRatingRepository;

/**
 * KolRatingSeeder class
 *
 * @category KolRating
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class KolRatingService extends BaseService
{
    /**
     * Get KolRating repository.
     *
     * @return KolRating
     */
    public function getRepository()
    {
        return KolRatingRepository::class;
    }

    /**
     * Get kol rating by kol_id and user_id
     *
     * @param mixed $kolId  KolId.
     * @param mixed $userId UserId.
     *
     * @return mixed
     */
    public function getKolRating($kolId, $userId)
    {
        return $this->repository->getKolRating($kolId, $userId);
    }

    /**
     * Update kol rating by kol_id and user_id
     *
     * @param mixed $kolId  KolId.
     * @param mixed $userId UserId.
     * @param mixed $input  Input.
     *
     * @return mixed
     */
    public function updateKolRating($kolId, $userId, $input)
    {
        return $this->repository->updateKolRating($kolId, $userId, $input);
    }
}
