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
 */
namespace Modules\Statistic\Services;

use App\Services\BaseService;
use Modules\Statistic\Repositories\StatisticDetailRepository;

/**
 * StatisticDetailService class
 *
 * @category Statistic
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class StatisticDetailService extends BaseService
{
    /**
     * Get StatisticDetail repository.
     *
     * @return StatisticDetailRepository
     */
    public function getRepository()
    {
        return StatisticDetailRepository::class;
    }
}
