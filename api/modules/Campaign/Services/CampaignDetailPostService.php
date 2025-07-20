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
use Modules\Campaign\Repositories\CampaignDetailPostRepository;

/**
 * CampaignDetailPostService class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CampaignDetailPostService extends BaseService
{
    /**
     * Get CampaignDetailPost repository.
     *
     * @return CampaignDetailPost
     */
    public function getRepository()
    {
        return CampaignDetailPostRepository::class;
    }
}
