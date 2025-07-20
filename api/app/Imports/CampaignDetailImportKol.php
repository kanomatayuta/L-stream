<?php

namespace App\Imports;

use App\Exceptions\DDException;
use App\Helpers\LogHelper;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithValidation;
use Modules\Campaign\Repositories\CampaignRepository;
use Illuminate\Support\Collection;

class CampaignDetailImportKol implements ToCollection, WithValidation
{
    /**
     * @var $campaignId Id Campaign.
     * @var $socialType Social Type.
     */
    protected $campaignId;
    protected $socialType;

    /**
     * @param array $data Data.
     */
    public function __construct(array $data)
    {
        $this->campaignId = $data['campaign_id'];
        $this->socialType = $data['social_type'];
    }

    /**
     * @return array
     */
    public function rules(): array
    {
        return [];
    }

    /**
     * @param \Illuminate\Support\Collection $collection Collection.
     * @return \Illuminate\Http\Response
     */
    public function collection(Collection  $collection)
    {
        DB::beginTransaction();
        try {
            $campaignRepo = new CampaignRepository();
            $campaignRepo->find($this->campaignId, ['kols']);
            $user_names = $collection->toArray();
            $data = array_map(function ($value) {
                return $value[0];
            }, $user_names);
            $campaignRepo->registerKolsToCampaigns(['kol_usernames' => $data, 'campaign_id' => $this->campaignId, 'social_type' => $this->socialType]);

            DB::commit();
        } catch (DDException $e) {
            LogHelper::logTrace($e);
            DB::rollBack();

            return response()->failure($e->getMessage());
        }
    }
}
