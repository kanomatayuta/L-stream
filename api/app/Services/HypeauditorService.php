<?php

namespace App\Services;

use App\Exceptions\DDException;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Log;
use GuzzleHttp\Exception\ClientException;
use Illuminate\Support\Facades\Validator;

/**
 * HypeauditorService class
 *
 * @category Hypeauditor
 * @package  Web_System
 * @author   Digi Dinos <contact@digidinos.com>
 * @license  Digi Dinos Copyright.
 * @link     https://digidinos.com
 */
abstract class HypeauditorService
{
    const BASE_URI = 'https://hypeauditor.com/api/method/';
    const SEARCH_API = 'auditor.search%s';
    const SUGGEST_API = 'auditor.suggester';
    public $data = [];
    protected $client;
    const REPORT_API = 'auditor.%s/?username=%s&features=%s&v=2';
    protected $clientId = '';
    protected $apiToken = '';
    protected $requireParams = [];
    protected $socialType = 0;
    protected $reportUrl = '';
    protected $searchUrl = '';
    protected $suggestUrl = '';
    protected $rules = '';

    /**
     * HypeauditorService construct
     */
    public function __construct()
    {
        $suffix = '';
        $this->clientId = config('constant.clientId');
        $this->apiToken = config('constant.apiToken');
        // Check env: local, staging, production
        if (App::environment('local')) {
            $suffix = 'Sandbox';
            $this->searchUrl = sprintf(self::SEARCH_API, $suffix);
            $this->suggestUrl = self::SUGGEST_API;
        } elseif (App::environment('testing')) {
            $suffix = '';
        } elseif (App::environment('staging')) {
            $suffix = 'Sandbox';
            $this->searchUrl = sprintf(self::SEARCH_API, $suffix);
            $this->suggestUrl = self::SUGGEST_API;
        } elseif (App::environment('production')) {
            $suffix = '';
            $this->searchUrl = sprintf(self::SEARCH_API, $suffix);
            $this->suggestUrl = self::SUGGEST_API;
        } else {
            // Defaul is local
            $suffix = 'Sandbox';
            $this->searchUrl = sprintf(self::SEARCH_API, $suffix);
            $this->suggestUrl = self::SUGGEST_API;
        }
        $this->client = new Client(
            [
                'base_uri' => self::BASE_URI,
            ]
        );
    }

    /**
     * Send request.
     *
     * @param string $method Method POST/GET.
     * @param string $path   Path to Api.
     * @param array  $data   Data filter call to API.
     *
     * @return mixed
     */
    public function sendRequest(string $method, string $path, array $data = [])
    {
        try {
            if (!empty($this->requireParams)) {
                $data['form_params'] = array_merge($this->requireParams, $data['form_params']);
            }
            Log::error('Class : ' . __CLASS__ . ', Method : ' . __METHOD__ . ', Line : ' . __LINE__ . ', $data : ' . json_encode($data));
            $response = $this->client->request($method, $path, $data);
            $body = $response->getBody();
            Log::error('Class : ' . __CLASS__ . ', Method : ' . __METHOD__ . ', Line : ' . __LINE__ . ', $body : ' . json_encode($body));
            if ($response->hasHeader('content-type')) {
                // Handle XML content
                if (strpos($response->getHeader('content-type')[0], 'xml') !== false) {
                    return $this->parseXML($body);
                }

                // Handle JSON content
                if (strpos($response->getHeader('content-type')[0], 'json') !== false) {
                    return @json_decode($body);
                }
            }

            // Raw content
            return $body;
        } catch (ClientException $e) {
            $response = $e->getResponse();
            $content = $response->getBody()->getContents();
            $code = '';
            $message = '';
            if (is_string($content)) {
                $content = json_decode($content);
            }
            if (isset($content->error->code)) {
                $code = $content->error->code;
            }
            if (isset($content->error->description)) {
                $message = $content->error->description;
            }
            $errorMessage = sprintf('Code:%s, message: %s', $code, $message);
            Log::error('[BaseService->sendRequest:' . __LINE__ . '] ' . $errorMessage);

            // Raw error
            throw new DDException($message, $code);
        } catch (\Exception $e) {
            $message = $e->getMessage() ?? '';
            Log::error('[BaseService->sendRequest:' . __LINE__ . '] ' . $message);

            // Raw error
            throw $e;
        }
    }

    /**
     * Parse XML from string.
     *
     * @param string $string String value for parser data.
     *
     * @return mixed
     */
    public function parseXML(string $string)
    {
        $xml = simplexml_load_string($string, null, LIBXML_NOCDATA);

        return @json_decode(json_encode($xml));
    }

    /**
     * Validate data attribute.
     *
     * @param array $data Data filter call to API.
     *
     * @return \Illuminate\Contracts\Validation\Validator
     */
    public function validateData(array $data)
    {
        if (empty($data)) {
            return true;
        }

        return Validator::make($data, $this->rules);
    }
}
