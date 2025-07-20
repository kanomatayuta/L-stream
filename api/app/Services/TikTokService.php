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

use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Log;
use Modules\Kol\Jobs\UpdateKolReportJob;
use Modules\Kol\Jobs\UpdateKolSearchJob;
use Modules\Kol\Transformers\TikTokReportResultTransformer;
use Modules\Kol\Transformers\TikTokSearchResultTransformer;

/**
 * TikTokService class
 *
 * @category Hypeauditor
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
class TikTokService extends HypeauditorService implements SnsServiceInterface
{
    /**
     * Instagram report result transformer.
     *
     * @var \Modules\Kol\Transformers\TikTokSearchResultTransformer $tikTokSearchResultTransformer TikTok search result transformer.
     */
    protected $tikTokSearchResultTransformer;
    /**
     * Instagram report result transformer.
     *
     * @var \Modules\Kol\Transformers\TikTokReportResultTransformer $tikTokReportResultTransformer TikTok report result transformer.
     */
    protected $tikTokReportResultTransformer;

    /**
     * TikTokService construct
     *
     * @param TikTokSearchResultTransformer $tikTokSearchResultTransformer TikTok search result transformer.
     * @param TikTokReportResultTransformer $tikTokReportResultTransformer TikTok report result transformer.
     */
    public function __construct(
        TikTokSearchResultTransformer $tikTokSearchResultTransformer,
        TikTokReportResultTransformer $tikTokReportResultTransformer
    )
    {
        $this->tikTokSearchResultTransformer = $tikTokSearchResultTransformer;
        $this->tikTokReportResultTransformer = $tikTokReportResultTransformer;
        $this->socialType = SnsService::SNS_TIKTOK_TYPE;
        parent::__construct();
        $this->client = new Client(
            [
                'base_uri' => self::BASE_URI,
            ]
        );
    }

    /**
     * Search KOL in Hypeauditor API
     * Note: Free user search with sandbox env
     *    vancityreynolds
     *    kevinhart4real
     *    kobebryant
     *    supersaf
     *    taylorswift
     *    selenagomez
     *    pepamack
     *    kendalljenner
     *    fcbarcelona
     *    theshilpashetty
     *    tarynwilliams
     *    nathanwpyle
     *
     * @param array   $data        Conditions filter.
     * @param boolean $forceUpdate Flag force update into DB after get result from Hypeauditor API.
     *
     * @return array Result from Hypeauditor API
     */
    public function search(array $data, bool $forceUpdate = true)
    {
        try {
            $conds = $this->mappingField($data);
            $this->rules = $this->getSearchRules();// Verify search field before send to Hype api.
            $validData = $this->validateData($conds);
            if ($validData->fails()) {
                return $validData->errors();
            }
            Log::error('Class : ' . __CLASS__ . ', Method : ' . __METHOD__ . ', Line : ' . __LINE__ . ', $conds : ' . json_encode($conds));
            $response = $this->sendRequest(
                'POST',
                $this->searchUrl,
                [
                    'headers' => [
                        'x-auth-id' => $this->clientId,
                        'x-auth-token' => $this->apiToken,
                        'Content-Type'     => 'application/json',
                    ],
                    'body' => json_encode($conds),
                ]
            );
            Log::error('Class : ' . __CLASS__ . ', Method : ' . __METHOD__ . ', Line : ' . __LINE__ . ', $response : ' . json_encode($response));

            $search_results = isset($response->result) ? $response->result : null;
            if (empty($search_results->search_results)) {
                return [];
            }

            $result = $this->tikTokSearchResultTransformer->transformSearchResults($search_results);
            if (App::environment('staging')) {
                $result = $this->tikTokSearchResultTransformer->stagingTransform($result);
            }
            if (isset($data['kol_exclude'])) {
                foreach ($result['search_results'] as $index => $value) {
                    if (isset($data['kol_exclude'][$value['basic']['username']])) {
                        $result['search_results'][$index]['disable'] = true;
                    }
                }
            }
            if (!empty($result) && $forceUpdate) {
                UpdateKolSearchJob::dispatch($result['search_results'], SnsService::SNS_TIKTOK_TYPE)->onQueue(config('constant.jobs.queue_process_kol_search'));
            }

            return $result;
        } catch (DDException $e) {
            LogHelper::logTrace($e);

            // Raw error
            throw $e;
        }
    }

    /**
     * Report KOL in Hypeauditor API
     * Note: Free user report with sandbox env
     *    littlebig
     *
     * @param array   $data        Conditions filter.
     * @param boolean $forceUpdate Flag force update into DB after get result from Hypeauditor API.
     *
     * @return array Result from Hypeauditor API
     */
    public function report(array $data, bool $forceUpdate = true)
    {
        try {
            $conds = $this->mappingField($data);
            $this->rules = $this->getReportRules();// Verify search field before send to Hype api.
            $validData = $this->validateData($conds);
            if ($validData->fails()) {
                return $validData->errors();
            }

            $reportUrl = sprintf('auditor.tiktok/?channel=%s&features=ranking,mentions&v=2', $conds['channel']);
            $this->reportUrl = $reportUrl;
            $response = $this->sendRequest(
                'GET',
                $this->reportUrl,
                [
                    'headers' => [
                        'x-auth-id' => $this->clientId,
                        'x-auth-token' => $this->apiToken,
                    ],
                    'form_params' => $conds,
                ]
            );

            $report_results = isset($response->result) ? $response->result : null;
            if (empty($report_results)) {
                return [];
            }

            $report_results->er_last_posted = $this->getErPorted($report_results->report->basic->id);
            $report_results->metrics_history = $this->getMetricsHistory($report_results->report->basic->username);
            $result = $this->tikTokReportResultTransformer->transformReportResult($report_results);
            if (!empty($result) && $forceUpdate) {
                UpdateKolReportJob::dispatch($result, SnsService::SNS_TIKTOK_TYPE)->onQueue(config('constant.jobs.queue_process_kol_report'));
            }

            return $result;
        } catch (DDException $e) {
            LogHelper::logTrace($e);

            // Raw error
            throw $e;
        }
    }

    /**
     * Mapping field in search form with field Hype api.
     *
     * @param array $data Data condition for filter.
     *
     * @return array
     */
    protected function mappingField(array $data)
    {
        //Mapping difference fields name in search form with field Hype api.
        $searchFields = [
            'social_network' => 'tiktok',
            "account_geo" => [
                "country" => ["jp"]
            ],
        ];
        if (isset($data['account_gender'])) {
            unset($data['account_gender']);
        }
        //Mapping all same field name in search form with field Hype api.
        $searchFields = array_merge($searchFields, $data);

        $fieldsIsObject = [
            'sort',
            'keywords',
            'subscribers_count',
            'er',
            'account_mentions',
            'category',
            'audience_geo',
            'audience_gender',
            'audience_age',
            'interests',
            'aqs'
        ];

        $payload= [];
        foreach($searchFields as $key => $item){
            if(in_array($key, $fieldsIsObject)){
                if(is_array(json_decode($item, true)) && json_decode($item, true)){
                    $payload[$key] = json_decode($item, true);
                }else{
                    if(json_decode($item) && json_decode($item) !== "[]"){
                        $payload[$key] = json_decode($item);
                    }
                }
            }else{
                $payload[$key] = $item;
            }
        }
        return $payload;
    }

    /**
     * Rule for validate before send search request to Hype api.
     *
     * @return array
     */
    protected function getSearchRules()
    {
        return [
            'social_network' => 'required|max:15',
            'channel' => 'string|max:50',
//            'keywords' => 'string|max:50',
//            'account_gender' => 'string|in:male,female',
//            'er' => 'between:1,100',
        ];
    }

    /**
     * Rule for validate before send report request to Hype api.
     *
     * @return array
     */
    protected function getReportRules()
    {
        return [
            'social_network' => 'required|max:15',
            'channel' => 'required|string|max:50',
        ];
    }

    /**
     * Get engagement posted
     *
     * @param string $channel Channel.
     *
     * @return array
     */
    protected function getErPorted(string $channel)
    {
        $reportUrl = sprintf('auditor.tiktokMedia');
        $this->reportUrl = $reportUrl;
        $response = $this->sendRequest(
            'POST',
            $this->reportUrl,
            [
                'headers' => [
                    'x-auth-id' => $this->clientId,
                    'x-auth-token' => $this->apiToken,
                ],
                'form_params' => [
                    'channelId' => $channel,
                ],
            ]
        );

        return $response->result ?? [];
    }

    /**
     * Get metrics history
     *
     * @param string $channel Channel.
     *
     * @return array
     */
    protected function getMetricsHistory(string $channel)
    {
        $reportUrl = sprintf('auditor.tiktokHistory');
        $this->reportUrl = $reportUrl;
        $response = $this->sendRequest(
            'POST',
            $this->reportUrl,
            [
                'headers' => [
                    'x-auth-id' => $this->clientId,
                    'x-auth-token' => $this->apiToken,
                ],
                'form_params' => [
                    'channel' => $channel,
                ],
            ]
        );

        return $response->result->metrics_history ?? [];
    }
}
