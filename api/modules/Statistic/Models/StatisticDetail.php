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
namespace Modules\Statistic\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * StatisticDetail class
 *
 * @category Statistic
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class StatisticDetail extends Model
{
    protected $fillable = [
        'user_id',// User Id
        'api_url',// API url is called
        'day',// Logging data when is called api every time
        'other_info',// Other info with API call
    ];

    public $selectable = [
        '*',
    ];

    public $sortable = [
    ];
}
