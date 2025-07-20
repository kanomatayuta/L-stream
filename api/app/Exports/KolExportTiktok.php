<?php

namespace App\Exports;

use Carbon\Carbon;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithColumnWidths;
use Maatwebsite\Excel\Concerns\WithCustomStartCell;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\WithStyles;
use Modules\Admin\Models\BookingRequest;
use Modules\Admin\Models\Driver;
use Modules\Admin\Services\BookingRequestService;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;

use function PHPSTORM_META\map;

class KolExportTiktok implements WithMapping, ShouldAutoSize, WithHeadings, FromCollection
{

    private $kolCampaigns;

    /**
     * Export Driver construct
     *
     * @param object $kolCampaigns Kol Campaigns.
     */
    public function __construct(object $kolCampaigns)
    {
        $this->kolCampaigns = $kolCampaigns;
    }

    /**
     * @return \Illuminate\Support\Collection
     */
    public function collection()
    {
        return $this->kolCampaigns;
    }

   /**
    * Show heading
    *
    * @return array
    */
    public function headings(): array
    {
        $headings = [
            config('constant.export_kol.username'),
            config('constant.export_kol.country'),
            config('constant.export_kol.full_name'),
            config('constant.export_kol.url'),
            config('constant.export_kol.follower_count'),
            config('constant.export_kol.engagement_rate'),
            config('constant.export_kol.male_rate'),
            config('constant.export_kol.female_rate'),
            config('constant.export_kol.male_13_17_rate'),
            config('constant.export_kol.male_18_24_rate'),
            config('constant.export_kol.male_25_34_rate'),
            config('constant.export_kol.male_35_44_rate'),
            config('constant.export_kol.male_45_64_rate'),
            config('constant.export_kol.female_13_17_rate'),
            config('constant.export_kol.female_18_24_rate'),
            config('constant.export_kol.female_25_34_rate'),
            config('constant.export_kol.female_35_44_rate'),
            config('constant.export_kol.female_45_64_rate'),
            config('constant.export_kol.follower_location_1st'),
            config('constant.export_kol.follower_location_2nd'),
            config('constant.export_kol.follower_location_3rd'),
            config('constant.export_kol.celebrity_ratio_among_followers'),
            config('constant.export_kol.like_avg_30_post'),
            config('constant.export_kol.view_avg_30_post'),
            config('constant.export_kol.comment_avg_30_post'),
            config('constant.export_kol.email'),
            config('constant.export_kol.instagram_url'),
            config('constant.export_kol.status'),
        ];

        return [
            $headings,
        ];
    }

   /**
    * @param mixed $kolCampaigns KolCampaigns.
    *
    * @return array
    */
    public function map($kolCampaigns): array
    {
        return [
            '@'.$kolCampaigns->username,
            ($kolCampaigns->kolOtherInfo) ? $kolCampaigns->kolOtherInfo->kol_country : '',
            $kolCampaigns->full_name,
            config('constant.tiktok_url').$kolCampaigns->username,
            $kolCampaigns->followers_count,
            $kolCampaigns->engagement_rate  . ' %',
            ($kolCampaigns->kolOtherInfo) ? $kolCampaigns->kolOtherInfo->male_follower_rate : '',
            ($kolCampaigns->kolOtherInfo) ? $kolCampaigns->kolOtherInfo->female_follower_rate : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->male_follower_rate_by_group_yt) ? $kolCampaigns->kolOtherInfo->male_follower_rate_by_group_yt['13-17']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->male_follower_rate_by_group_yt) ? $kolCampaigns->kolOtherInfo->male_follower_rate_by_group_yt['18-24']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->male_follower_rate_by_group_yt) ? $kolCampaigns->kolOtherInfo->male_follower_rate_by_group_yt['25-34']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->male_follower_rate_by_group_yt) ? $kolCampaigns->kolOtherInfo->male_follower_rate_by_group_yt['35-44']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->male_follower_rate_by_group_yt) ? $kolCampaigns->kolOtherInfo->male_follower_rate_by_group_yt['45-64']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->female_follower_rate_by_group_yt) ? $kolCampaigns->kolOtherInfo->female_follower_rate_by_group_yt['13-17']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->female_follower_rate_by_group_yt) ? $kolCampaigns->kolOtherInfo->female_follower_rate_by_group_yt['18-24']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->female_follower_rate_by_group_yt) ? $kolCampaigns->kolOtherInfo->female_follower_rate_by_group_yt['25-34']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->female_follower_rate_by_group_yt) ? $kolCampaigns->kolOtherInfo->female_follower_rate_by_group_yt['35-44']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->female_follower_rate_by_group_yt) ? $kolCampaigns->kolOtherInfo->female_follower_rate_by_group_yt['45-64']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_follower[0])) ? $kolCampaigns->kolOtherInfo->sort_follower[0] : "",
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_follower[1])) ? $kolCampaigns->kolOtherInfo->sort_follower[1] : "",
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_follower[2])) ? $kolCampaigns->kolOtherInfo->sort_follower[2] : "",
            ($kolCampaigns->kolOtherInfo) ? $kolCampaigns->kolOtherInfo->audience_by_type .' %' : '',
            ($kolCampaigns->kolOtherInfo) ? $kolCampaigns->kolOtherInfo->likes_avg : '',
            ($kolCampaigns->kolOtherInfo) ? $kolCampaigns->kolOtherInfo->views_avg : '',
            ($kolCampaigns->kolOtherInfo) ? $kolCampaigns->kolOtherInfo->comments_avg : '',
            ($kolCampaigns->kolOtherInfo) ? $kolCampaigns->kolOtherInfo->kol_email_y_t : "",
            config('constant.instagram_url').$kolCampaigns->username,
            config('constant.Kol_status.'.$kolCampaigns->pivot->kol_status),
        ];
    }
}
