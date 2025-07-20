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

class KolExport implements WithMapping, ShouldAutoSize, WithHeadings, FromCollection
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
        config('constant.export_kol.country_1st_follower'),
        config('constant.export_kol.country_2th_follower'),
        config('constant.export_kol.country_3rd_follower'),
        config('constant.export_kol.hash_tag_er_1st'),
        config('constant.export_kol.hash_tag_er_2th'),
        config('constant.export_kol.hash_tag_er_3rd'),
        config('constant.export_kol.hash_tag_er_4th'),
        config('constant.export_kol.hash_tag_er_5th'),
        config('constant.export_kol.audience_interests_1st'),
        config('constant.export_kol.audience_interests_2th'),
        config('constant.export_kol.audience_interests_3rd'),
        config('constant.export_kol.audience_interests_4th'),
        config('constant.export_kol.audience_interests_5th'),
        config('constant.export_kol.audience_brand_mentions_1st'),
        config('constant.export_kol.audience_brand_mentions_2th'),
        config('constant.export_kol.audience_brand_mentions_3rd'),
        config('constant.export_kol.audience_brand_mentions_4th'),
        config('constant.export_kol.audience_brand_mentions_5th'),
        config('constant.export_kol.aqs'),
        config('constant.export_kol.like_avg_30_post'),
        config('constant.export_kol.comment_avg_30_post'),
        config('constant.export_kol.email'),
        config('constant.export_kol.reel_like_rate'),
        config('constant.export_kol.reel_comment_rate'),
        config('constant.export_kol.reel_view_rate'),
        config('constant.export_kol.reel_er_rate'),
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
            config('constant.instagram_url').$kolCampaigns->username,
            $kolCampaigns->followers_count,
            $kolCampaigns->engagement_rate  . ' %',
            ($kolCampaigns->kolOtherInfo) ? $kolCampaigns->kolOtherInfo->male_follower_rate : '',
            ($kolCampaigns->kolOtherInfo) ? $kolCampaigns->kolOtherInfo->female_follower_rate : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->male_follower_rate_by_group) ? $kolCampaigns->kolOtherInfo->male_follower_rate_by_group['age13-17']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->male_follower_rate_by_group) ? $kolCampaigns->kolOtherInfo->male_follower_rate_by_group['age18-24']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->male_follower_rate_by_group) ? $kolCampaigns->kolOtherInfo->male_follower_rate_by_group['age25-34']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->male_follower_rate_by_group) ? $kolCampaigns->kolOtherInfo->male_follower_rate_by_group['age35-44']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->male_follower_rate_by_group) ? $kolCampaigns->kolOtherInfo->male_follower_rate_by_group['age45-64']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->female_follower_rate_by_group) ? $kolCampaigns->kolOtherInfo->female_follower_rate_by_group['age13-17']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->female_follower_rate_by_group) ? $kolCampaigns->kolOtherInfo->female_follower_rate_by_group['age18-24']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->female_follower_rate_by_group) ? $kolCampaigns->kolOtherInfo->female_follower_rate_by_group['age25-34']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->female_follower_rate_by_group) ? $kolCampaigns->kolOtherInfo->female_follower_rate_by_group['age35-44']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->female_follower_rate_by_group) ? $kolCampaigns->kolOtherInfo->female_follower_rate_by_group['age45-64']->value.'%' : '',
            ($kolCampaigns->kolOtherInfo && $kolCampaigns->kolOtherInfo->sort_audience_ethnicity) ? $kolCampaigns->kolOtherInfo->sort_audience_ethnicity[0] : '',
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_audience_ethnicity[1])) ? $kolCampaigns->kolOtherInfo->sort_audience_ethnicity[1] : '',
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_audience_ethnicity[2])) ? $kolCampaigns->kolOtherInfo->sort_audience_ethnicity[2] : '',
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_hash_tag_er_rate[0])) ? $kolCampaigns->kolOtherInfo->sort_hash_tag_er_rate[0] : '',
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_hash_tag_er_rate[1])) ? $kolCampaigns->kolOtherInfo->sort_hash_tag_er_rate[1] : '',
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_hash_tag_er_rate[2])) ? $kolCampaigns->kolOtherInfo->sort_hash_tag_er_rate[2] : '',
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_hash_tag_er_rate[3])) ? $kolCampaigns->kolOtherInfo->sort_hash_tag_er_rate[3] : '',
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_hash_tag_er_rate[4])) ? $kolCampaigns->kolOtherInfo->sort_hash_tag_er_rate[4] : '',
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_audience_interests[0])) ? $kolCampaigns->kolOtherInfo->sort_audience_interests[0] : "",
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_audience_interests[1])) ? $kolCampaigns->kolOtherInfo->sort_audience_interests[1] : "",
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_audience_interests[2])) ? $kolCampaigns->kolOtherInfo->sort_audience_interests[2] : "",
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_audience_interests[3])) ? $kolCampaigns->kolOtherInfo->sort_audience_interests[3] : "",
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_audience_interests[4])) ? $kolCampaigns->kolOtherInfo->sort_audience_interests[4] : "",
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_brands_mentions[0])) ? $kolCampaigns->kolOtherInfo->sort_brands_mentions[0] : "",
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_brands_mentions[1])) ? $kolCampaigns->kolOtherInfo->sort_brands_mentions[1] : "",
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_brands_mentions[2])) ? $kolCampaigns->kolOtherInfo->sort_brands_mentions[2] : "",
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_brands_mentions[3])) ? $kolCampaigns->kolOtherInfo->sort_brands_mentions[3] : "",
            ($kolCampaigns->kolOtherInfo && isset($kolCampaigns->kolOtherInfo->sort_brands_mentions[4])) ? $kolCampaigns->kolOtherInfo->sort_brands_mentions[4] : "",
            ($kolCampaigns->kolOtherInfo) ? $kolCampaigns->kolOtherInfo->aqs. ' %' : "",
            ($kolCampaigns->like_avg),
            ($kolCampaigns->comment_avg),
            ($kolCampaigns->kolOtherInfo) ? $kolCampaigns->kolOtherInfo->kol_email : "",
            ($kolCampaigns->kolOtherInfo) ? $kolCampaigns->kolOtherInfo->like_avg_10_latest_reel : "",
            ($kolCampaigns->kolOtherInfo) ? $kolCampaigns->kolOtherInfo->comment_avg_10_latest_reel : "",
            ($kolCampaigns->kolOtherInfo) ? $kolCampaigns->kolOtherInfo->view_avg_10_latest_reel : "",
            ($kolCampaigns->kolOtherInfo) ? $kolCampaigns->kolOtherInfo->er_avg_10_latest_reel. ' %' : "",
        ];
    }
}
