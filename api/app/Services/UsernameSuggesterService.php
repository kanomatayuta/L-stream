<?php

namespace App\Services;

use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use GuzzleHttp\Client;

class UsernameSuggesterService extends HypeauditorService
{
    /**
     *  UsernameSuggesterService Construct
     */
    public function __construct()
    {
        parent::__construct();
        $this->client = new Client(
            [
                'base_uri' => self::BASE_URI,
            ]
        );
    }

    /**
     *  Suggest kol
     *
     * @param array $data Data filter.
     * @return array
     */
    public function suggest(array $data)
    {
        try {
            $response = $this->sendRequest(
                'POST',
                $this->suggestUrl,
                [
                    'headers' => [
                        'x-auth-id' => $this->clientId,
                        'x-auth-token' => $this->apiToken,
                    ],
                    'form_params' => $data,
                ]
            );
            $suggest_results = isset($response->result->list) ? $response->result->list : null;
            if (empty($suggest_results)) {
                return [];
            }
            $result = array_slice($suggest_results, 0, 5);
            return $result;
        } catch (DDException $e) {
            LogHelper::logTrace($e);

            // Raw error
            throw $e;
        }
    }
}
