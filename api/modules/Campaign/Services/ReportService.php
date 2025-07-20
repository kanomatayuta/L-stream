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
namespace Modules\Campaign\Services;

use App\Services\BaseService;
use Facade\FlareClient\Report;
use Modules\Campaign\Repositories\ReportRepository;

/**
 * ReportService class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class ReportService extends BaseService
{
    /**
     * Get Campaign repository.
     *
     * @return Report
     */
    public function getRepository()
    {
        return ReportRepository::class;
    }
}
