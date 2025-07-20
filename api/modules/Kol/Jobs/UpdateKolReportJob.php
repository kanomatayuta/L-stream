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
namespace  Modules\Kol\Jobs;

use App\Helpers\LogHelper;
use App\Services\SnsService;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Modules\Kol\Services\KolService;
use Illuminate\Support\Facades\Log;
use Modules\Kol\Transformers\InstagramReportResultTransformer;
use Modules\Kol\Transformers\TikTokReportResultTransformer;
use Modules\Kol\Transformers\YoutubeReportResultTransformer;

/**
 * UpdateKolReportJob class
 *
 * @category Kol
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class UpdateKolReportJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Kol report info from Hype search API.
     *
     * @var array $kolReportInfo Kol report info from Hype search API.
     */
    private $kolReportInfo;
    /**
     * Social type.
     *
     * @var integer $socialType Social type.
     */
    private $socialType;

    /**
     * Create a new job instance.
     *
     * @param mixed   $kolReportInfo Kol info get from Report api on hypeauditor.
     * @param integer $socialType    Social type.
     *
     * @return void
     */
    public function __construct($kolReportInfo, int $socialType)
    {
        $this->kolReportInfo = $kolReportInfo;
        $this->socialType = $socialType;
    }

    /**
     * Execute the job.
     *
     * @param KolService                       $kolService                       Kol Service for create/update data into DB.
     * @param InstagramReportResultTransformer $instagramReportResultTransformer Transform instagram report data.
     * @param YoutubeReportResultTransformer   $youtubeReportResultTransformer   Transform youtube report data.
     * @param TikTokReportResultTransformer    $tikTokReportResultTransformer    Transform tiktok report data.
     *
     * @return void
     */
    public function handle(
        KolService $kolService,
        InstagramReportResultTransformer $instagramReportResultTransformer,
        YoutubeReportResultTransformer $youtubeReportResultTransformer,
        TikTokReportResultTransformer $tikTokReportResultTransformer
    )
    {
        try {
            // Note: Processing update KOL info from search into DB
            if (empty($this->kolReportInfo)) {
                return;
            }

            $kolReportInfo = [];
            $kolReportOtherInfo = [];
            $kolReportFollowerInfo = [];
            if ($this->socialType == SnsService::SNS_INSTAGRAM_TYPE) {
                $userInfo = $this->kolReportInfo['user'] ?? [];
                if (empty($userInfo)) {
                    return;
                }
                $kolReportInfo = $instagramReportResultTransformer->transformReportResultToKolInfo($userInfo);
                $kolReportOtherInfo = $instagramReportResultTransformer->transformReportResultToKolOtherInfo($userInfo);
                $kolReportFollowerInfo = $instagramReportResultTransformer->transformReportResultToKolFollowerInfo($userInfo);
                $conds = [
                    'social_type' => $kolReportInfo['social_type'],
                    'username' => $kolReportInfo['username']
                ];
            } elseif ($this->socialType == SnsService::SNS_YOUTUBE_TYPE) {
                $reportInfo = $this->kolReportInfo['report'] ?? [];
                if (empty($reportInfo)) {
                    return;
                }
                $kolReportInfo = $youtubeReportResultTransformer->transformReportResultToKolInfo($reportInfo);
                $kolReportOtherInfo = $youtubeReportResultTransformer->transformReportResultToKolOtherInfo($reportInfo);
                $conds = [
                    'social_type' => $kolReportInfo['social_type'],
                    'social_id' => $kolReportInfo['social_id']
                ];
            } elseif ($this->socialType == SnsService::SNS_TIKTOK_TYPE) {
                $reportInfo = $this->kolReportInfo ?? [];
                if (empty($reportInfo)) {
                    return;
                }
                $kolReportInfo = $tikTokReportResultTransformer->transformReportResultToKolInfo($reportInfo);
                $kolReportOtherInfo = $tikTokReportResultTransformer->transformReportResultToKolOtherInfo($reportInfo);
                $conds = [
                    'social_type' => $kolReportInfo['social_type'],
                    'social_id' => $kolReportInfo['social_id']
                ];
            }
            if (empty($kolReportInfo)) {
                return;
            }

            $kol = $kolService->updateOrCreate($conds, $kolReportInfo);

            $conds1 = [
                'kol_id' => $kol->id,
            ];
            $kol->kolOtherInfo()->updateOrCreate($conds1, $kolReportOtherInfo);
            $kol->followers()->updateOrCreate($conds1, $kolReportFollowerInfo);
        } catch (\Exception $e) {
            LogHelper::logTrace($e);
        }
    }
}
