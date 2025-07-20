<template>
  <a-form-model
    ref="form"
    :model="model"
    :label-col="{ sm: 6 }"
    :wrapper-col="{ sm: 18 }"
  >
    <a-spin :spinning="loading">
      <div v-if="dataCampaign.length == 0" class="campaign-empty">
        {{ $t('campaign.empty') }}
      </div>
      <div class="content">
        <a-row
          v-for="(item, index) in dataCampaign"
          :key="index"
          type="flex"
          :gutter="30"
          class="pb-3"
        >
          <a-col :span="21">
            <div class="campaign-name">
              {{ item.name }} ({{ item.campaign_detail.length }})
            </div>
          </a-col>
          <a-col :span="3">
            <a-checkbox
              :checked="registeredCampaignId.includes(item.id)"
              :value="item"
              @change="onCheckboxChange"
            />
          </a-col>
        </a-row>
      </div>
      <hr />
      <div class="p-2 plus-button">
        <div>
          <font-awesome-icon
            icon="plus-circle"
            class="anticon"
          />
        </div>
        <div
          class="plus-content"
        >
          <a :href="$router.resolve({name: 'campaign-new'}).href" target="_blank">
            {{ $t("campaign.create") }}
          </a>
        </div>
      </div>
    </a-spin>
  </a-form-model>
</template>
<script>
import DataForm from '~/mixins/data-form'

export default {
  mixins: [DataForm],
  props: {
    kolUsernames: {
      type: [Array],
      default: () => []
    },
    dataCampaign: {
      type: [Array],
      default: () => []
    },
    socialType: {
      type: String,
      default: ''
    }
  },
  data() {
    return {
      resource: 'campaignDetail',
      registeredCampaignId: []
    }
  },

  watch: {
    kolUsernames() {
      this.registeredCampaignId = []
      this.getCampaign()
    },
    dataCampaign() {
      this.getCampaign()
    }
  },

  created() {
    this.getCampaign()
  },

  methods: {
    /**
     * Check change event of checkbox
     */
    async onCheckboxChange(e) {
      const campaignName = e.target.value.name
      const campaignId = e.target.value.id
      const checked = e.target.checked
      const data = {
        campaignName,
        campaignId,
        kolUsernames: this.kolUsernames,
        checked,
        socialType: this.socialType
      }
      await this.handleRegisterKols(data)
      this.getCampaign()
      this.$emit('change')
      this.$emit('refresh-campaign')
    },
    async getCampaign() {
      if (this.dataCampaign.length !== 0) {
        const params = {
          username: this.kolUsernames,
          social_type: this.socialType
        }
        const { data: { result: { data } } } = await this.repository.getRegisteredCampaign({ params })
        this.registeredCampaignId = data
      }
    }
  }
}
</script>
<style lang="scss" scoped>

svg.anticon.svg-inline--fa.fa-plus-circle {
  font-size: 26px;
  width: 25px;
  height: 25px;
  color: #9a83ed;
  margin-bottom: 7px;
}
.plus-button {
  margin-left: 20px;
  display: flex;
  align-items: center;
}

.plus-content {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 16px;
  color: #1890FF;
  mix-blend-mode: normal;
  margin-left: 9.75px;
  margin-bottom: 9px;
}

.campaign-name {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 22px;
  color: #000000;
  margin-left: 17px;
}

.campaign-empty {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 22px;
  color: #000000;
  text-align: center;
}

/deep/ {
  .ant-checkbox-checked .ant-checkbox-inner {
    background: #A3DE97;
    border-radius: 2px;
    border-color: #FFFFFF;
  }
  .ant-col-21 {
    width: 84%;
  }
}
</style>
