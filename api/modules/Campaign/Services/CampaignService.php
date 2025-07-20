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
use Maatwebsite\Excel\Excel as ExcelFormat;
use Maatwebsite\Excel\Facades\Excel;
use Modules\Campaign\Repositories\CampaignRepository;

/**
 * CampaignService class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CampaignService extends BaseService
{
    /**
     * Get Campaign repository.
     *
     * @return Campaign
     */
    public function getRepository()
    {
        return CampaignRepository::class;
    }
    /**
     * Download CSV.
     *
     * @param mixed  $instance Instance.
     * @param string $fileName Filename.
     *
     * @return Response
     */
    public function downloadCSV($instance, string $fileName)
    {
        $content = Excel::raw($instance, ExcelFormat::CSV);
        $content = mb_convert_encoding($content, 'SJIS', 'UTF-8');
        $path = storage_path('csv');
        if (!is_dir($path)) {
            mkdir($path, 0775);
        }
        $path = storage_path('csv') . '/' . $fileName;
        file_put_contents($path, $content);

        return $path;
    }
}
