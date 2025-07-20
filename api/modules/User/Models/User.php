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
namespace Modules\User\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;
use Modules\Campaign\Models\Campaign;
use Modules\Kol\Models\KolRating;
use Modules\Payment\Models\PaymentDetail;
use Modules\Plan\Models\Plan;
use Modules\Statistic\Models\Statistic;
use Modules\Tag\Models\Tag;
use Spatie\Permission\Traits\HasRoles;

/**
 * User class
 *
 * @category User
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class User extends Authenticatable
{
    use Notifiable;
    use HasApiTokens;
    use HasRoles;
    protected $guard_name = 'web';
    protected $fillable = [
        'name',
        'email',
        'password',
        'code',
        'username',
        'address',
        'avatar_url',
        'date_join',
        'birthday',
        'gender',
        'is_active',
        'mobile_no',
        'email_verified_at',
        'remember_token',
        'representative',
        'website',
        'plan_id',
        'plan_start_date',
        'role_type',
        'company_name',
        'page_search_number',
        'profile_view_number',
        'export_csv_number',
        'campaign_register_number',
    ];
    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * Relationhip of variation and stock.
     *
     * @return collection
     */
    public function paymentPlans()
    {
        return $this->hasOne(PaymentDetail::class, 'user_id');
    }

    /**
     * Relationhip of variation and stock.
     *
     * @return collection
     */
    public function plan()
    {
        return $this->belongsTo(Plan::class, 'plan_id');
    }

    /**
     * Relationhip of user statistic.
     *
     * @return collection
     */
    public function statistic()
    {
        return $this->hasOne(Statistic::class, 'user_id');
    }

    /**
     * Relationhip of user statistic.
     *
     * @return collection
     */
    public function latestStatistic()
    {
        return $this->hasOne(Statistic::class, 'user_id')->latestOfMany();
    }

    /**
     * Relationhip with Campaign model.
     *
     * @return collection
     */
    public function campaigns()
    {
        return $this->hasMany(Campaign::class);
    }

    /**
     * Relationhip with Tag model.
     *
     * @return collection
     */
    public function tags()
    {
        return $this->hasMany(Tag::class);
    }

    /**
     * Relationhip with KolRating model.
     *
     * @return collection
     */
    public function ratings()
    {
        return $this->hasMany(KolRating::class);
    }
}
