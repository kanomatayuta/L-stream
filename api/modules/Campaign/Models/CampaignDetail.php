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
namespace Modules\Campaign\Models;

use Illuminate\Database\Eloquent\Model;
use Modules\Kol\Models\Kol;
use Modules\Campaign\Models\Campaign;

/**
 * CampaignDetail class
 *
 * @category Campaign
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class CampaignDetail extends Model
{
    protected $fillable = [
        'campaign_id',// Campagn Id
        'kol_id',// KOL Id
        'kol_status',// KOL status: 0: Under internal review, 1: under negotiation, 2: NG, 3: OK (Default: 0)
        'notes',// KOL notes
        'cost'
    ];

    public $selectable = [
        '*',
    ];

    public $sortable = [];

    /**
     * Relation with Kol model
     *
     * @return mixed
     */
    public function kol()
    {
        return $this->belongsTo(Kol::class, 'kol_id');
    }

    /**
     * Relation with campaign model
     *
     * @return mixed
     */
    public function campaign()
    {
        return $this->belongsTo(Campaign::class, 'campaign_id');
    }
}
