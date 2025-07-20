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
namespace Modules\Genre\Services;

use App\Services\BaseService;
use Modules\Genre\Repositories\GenreRepository;

/**
 * GenreDataSeeder class
 *
 * @category Genre
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class GenreService extends BaseService
{
    /**
     * Genre repository.
     *
     * @return GenreRepository
     */
    public function getRepository()
    {
        return GenreRepository::class;
    }
}
