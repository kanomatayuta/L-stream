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
namespace App\Services;

use Illuminate\Container\Container as App;
use App\Exceptions\DDException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * SnsService class
 *
 * @category Core
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class SnsService
{
    const SNS_INSTAGRAM_TYPE = 1;
    const SNS_YOUTUBE_TYPE = 2;
    const SNS_TIKTOK_TYPE = 3;

    /**
     * SnsService construct
     *
     * @param InstagramService $instagramService Instagram service.
     * @param YoutubeService   $youtubeService   Youtube service.
     * @param TikTokService    $tikTokService    TikTok service.
     */
    public function __construct(
        InstagramService $instagramService,
        YoutubeService $youtubeService,
        TikTokService $tikTokService
    )
    {
        $this->instagramService = $instagramService;
        $this->youtubeService = $youtubeService;
        $this->tikTokService = $tikTokService;
    }

    /**
     * Factory service.
     *
     * @param mixed $serviceType Sns service type.
     *
     * @return mixed
     */
    public function createService($serviceType)
    {
        switch ($serviceType) {
            case self::SNS_INSTAGRAM_TYPE:
                return $this->instagramService;
            case self::SNS_YOUTUBE_TYPE:
                return $this->youtubeService;
            case self::SNS_TIKTOK_TYPE:
                return $this->tikTokService;
            default:
                throw new \Exception('[SnsService->createService:' . __LINE__ . '] Invalid serviceType:' . $serviceType, 404);
        }
    }
}
