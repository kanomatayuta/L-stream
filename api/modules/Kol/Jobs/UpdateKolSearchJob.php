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
use Modules\Kol\Transformers\InstagramSearchResultTransformer;
use Modules\Kol\Transformers\TikTokSearchResultTransformer;
use Modules\Kol\Transformers\YoutubeSearchResultTransformer;

/**
 * UpdateKolSearchJob class
 *
 * @category Kol
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class UpdateKolSearchJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Kol info from Hype search API.
     *
     * @var array $kolInfo Kol info from Hype search API.
     */
    private $kolInfos;
    /**
     * Social type.
     *
     * @var integer $socialType Social type.
     */
    private $socialType;

    /**
     * Create a new job instance.
     *
     * @param array   $kolInfos   Kol info get from Search api on hypeauditor.
     * @param integer $socialType Social type.
     *
     * @return void
     */
    public function __construct(array $kolInfos, int $socialType)
    {
        $this->kolInfos = $kolInfos;
        $this->socialType = $socialType;
    }

    /**
     * Execute the job.
     *
     * @param KolService                       $kolService                       Kol Service for create/update data into DB.
     * @param InstagramSearchResultTransformer $instagramSearchResultTransformer Kol Service for create/update data into DB.
     * @param YoutubeSearchResultTransformer   $youtubeSearchResultTransformer   Kol Service for create/update data into DB.
     * @param TikTokSearchResultTransformer    $tikTokSearchResultTransformer    Kol Service for create/update data into DB.
     *
     * @return void
     */
    public function handle(
        KolService $kolService,
        InstagramSearchResultTransformer $instagramSearchResultTransformer,
        YoutubeSearchResultTransformer $youtubeSearchResultTransformer,
        TikTokSearchResultTransformer $tikTokSearchResultTransformer
    )
    {
        try {
            // Note: Processing update KOL info from search into DB
            if (empty($this->kolInfos)) {
                return;
            }

            foreach ($this->kolInfos as $kolInfo) {
                $kolSearchInfo = [];
                // Condition for update.
                $conds = [
                    'social_type' => $this->socialType,
                ];
                if ($this->socialType == SnsService::SNS_INSTAGRAM_TYPE) {
                    $kolSearchInfo = $instagramSearchResultTransformer->transformSearchResultToKolInfo($kolInfo);
                    $conds['username'] = $kolSearchInfo['username'];
                } elseif ($this->socialType == SnsService::SNS_YOUTUBE_TYPE) {
                    $kolSearchInfo = $youtubeSearchResultTransformer->transformSearchResultToKolInfo($kolInfo);
                    $conds['social_id'] = $kolSearchInfo['social_id'];
                } elseif ($this->socialType == SnsService::SNS_TIKTOK_TYPE) {
                    $kolSearchInfo = $tikTokSearchResultTransformer->transformSearchResultToKolInfo($kolInfo);
                    $conds['social_id'] = $kolSearchInfo['social_id'];
                }
                if (empty($kolSearchInfo)) {
                    return;
                }
                $kolService->updateOrCreate($conds, $kolSearchInfo);
            }
        } catch (\Exception $e) {
            LogHelper::logTrace($e);
        }
    }
}
