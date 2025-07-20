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
 **/
namespace Modules\Campaign\Repositories;

use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Builder;
use Modules\Campaign\Models\TabReport;
use phpseclib3\Math\PrimeField\Integer;

/**
 * ReportRepository class
 *
 * @category Campaign Report
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class ReportRepository extends BaseRepository
{
    /**
     * @return Modules\Campaign\Models\TabReport
     */
    public function getModel()
    {
        return TabReport::class;
    }

    /**
     * Get data campaign report by campaign_id
     *
     * @param integer $campaignId Campaign_id.
     *
     * @return array campaignReport.
     */
    public function showCampaignReport(int $campaignId)
    {
        return $this->model->where('campaign_id', $campaignId)->get();
    }

    /**
     * Update campaign report
     *
     * @param integer $campaignId Campaign_id.
     * @param array   $input      Input array.
     * @return mixed
     */
    public function updateCampaignReport(int $campaignId, array $input)
    {
        $campaignReport = $this->model->where('campaign_id', $campaignId)->firstOrFail();
        return $this->model->where('id', $campaignReport->id)->update($input);
    }
}
