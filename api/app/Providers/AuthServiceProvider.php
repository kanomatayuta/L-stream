<?php
/**
 * Digi Dinos package.
 * PHP version ^7.3|^8.0
 *
 * @category  Providers
 * @package   Web_System
 * @author    Digi Dinos <contact@digidinos.com>
 * @copyright 2022 Digi Dinos.
 * @license   Digi Dinos Copyright.
 * @version   GIT: <1.0.0>
 * @link      https://digidinos.com
 * @see       https://digidinos.com
 **/
namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;
use Laravel\Passport\Passport;
use Modules\Role\Models\Role;
use Illuminate\Support\Facades\Log;
use Modules\Kol\Models\Kol;
use Modules\Kol\Policies\KolPolicy;

/**
 * AuthServiceProvider class
 *
 * @category Kol
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        Kol::class => KolPolicy::class,
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Passport::tokensExpireIn(now()->addDays(1));

        Passport::refreshTokensExpireIn(now()->addDays(15));

        Passport::personalAccessTokensExpireIn(now()->addDays(15));

        // Note: Admin allow all action.
        Gate::before(function ($user, $ability) {
            return $user->hasRole(Role::ADMIN) ? true : null;
        });

        // Note: Check policy when modify. Apply only to action which needs check modify logic.
        Gate::define(
            'modify',
            function ($user, $entity) {
                $tableName = $entity->getTable();
                switch ($tableName) {
                    case 'campaign_details':
                    case 'campaign_detail_posts':
                    case 'tab_reports':
                        $entityUserId = $entity->campaign->user_id;
                        break;
                    default:
                        $entityUserId = $entity->user_id;
                        break;
                };
                if ($entityUserId == $user->id) {
                    return true;
                } else {
                    return false;
                }
            }
        );

        // Verify call limit Kol search
        Gate::define('kol-search', [KolPolicy::class, 'search']);
        // Verify call limit Kol report
        Gate::define('kol-report', [KolPolicy::class, 'report']);
        // Verify call limit export csv
        Gate::define('export-csv', [KolPolicy::class, 'exportCsv']);
        // Verify call limit register campaign
        Gate::define('register-campaign', [KolPolicy::class, 'registerCampaign']);
    }
}
