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
use Modules\Kol\Repositories\KolRepository;

/**
 * KolSeeder class
 *
 * @category Kol
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class KolService extends BaseService
{
    /**
     * Get Kol repository.
     *
     * @return Kol
     */
    public function getRepository()
    {
        return KolRepository::class;
    }
}
