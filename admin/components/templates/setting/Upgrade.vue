<template>
  <div class="container">
    <div class="upgrade_info">
      <a-row>
        <a-col
          :xs="24"
          :sm="12"
          :md="8"
          :lg="2"
          :xl="2"
          :span="24"
        />
        <a-col
          :xs="24"
          :sm="12"
          :md="8"
          :lg="4"
          :xl="4"
          :span="24"
        >
          <div v-for="(plan, index) in plans" :key="index">
            <div v-if="plan.plan_type === UPGRADE_PLAN_TYPE.BASIC" class="box__shadow">
              <a-col>
                <div class="enterprise">
                  <span class="tag_name">
                    {{ UPGRADE_PLAN_NAME.BASIC }}
                  </span>
                </div>
              </a-col>
              <a-col class="setting-info">
                <!-- <div class="contact">
                  <span>
                    {{ $t('setting.large_scale') }}
                  </span>
                  <br />
                  <span>
                    {{ $t('setting.prepared') }}
                  </span>
                  <br />
                  <span>
                    {{ $t('setting.contact') }}
                  </span>
                </div> -->
                <div class="price">
                  <span>
                    ¥ {{ commaSeperate(plan.short_term_money_amount) }}/{{ $t('setting.plan_money_month') }}
                  </span>
                </div>
              </a-col>
              <a-col class="col-button">
                <div class="button" @click="showModalConfirm()">
                  <a-button
                    class="button_enterprise min-w-100"
                    type="default"
                  >
                    {{ UPGRADE_PLAN_NAME.BASIC }}
                  </a-button>
                </div>
              </a-col>
            </div>
          </div>
        </a-col>
        <a-col
          :xs="24"
          :sm="12"
          :md="8"
          :lg="4"
          :xl="4"
          :span="24"
        >
          <div v-for="(plan, index) in plans" :key="index">
            <div v-if="plan.plan_type === UPGRADE_PLAN_TYPE.SILVER" class="box__shadow">
              <a-col>
                <div class="advanced">
                  <span class="tag_name">
                    {{ UPGRADE_PLAN_NAME.SILVER }}
                  </span>
                </div>
              </a-col>
              <a-col class="setting-info">
                <!-- <div class="pt-4">
                  <span>
                    {{ $t('setting.brand_rapid') }}
                  </span>
                  <br />
                  <span>
                    {{ $t('setting.db_brands') }}
                  </span>
                </div> -->
                <div class="price">
                  <span>
                    ¥ {{ commaSeperate(plan.short_term_money_amount) }}/{{ $t('setting.plan_money_month') }}
                  </span>
                </div>
              </a-col>
              <a-col class="col-button">
                <div class="button">
                  <a-button class="button_advanced" @click="showModalConfirm()">
                    {{ UPGRADE_PLAN_NAME.SILVER }}
                  </a-button>
                </div>
              </a-col>
            </div>
          </div>
        </a-col>
        <a-col
          :xs="24"
          :sm="12"
          :md="8"
          :lg="4"
          :xl="4"
          :span="24"
        >
          <div v-for="(plan, index) in plans" :key="index">
            <div v-if="plan.plan_type === UPGRADE_PLAN_TYPE.GOLD" class="box__shadow">
              <a-col>
                <div class="performace">
                  <span class="tag_name">
                    {{ UPGRADE_PLAN_NAME.GOLD }}
                  </span>
                </div>
              </a-col>
              <a-col class="setting-info">
                <!-- <div class="pt-4">
                  <span>
                    {{ $t('setting.brand_steady') }}
                  </span>
                  <br />
                  <span>
                    {{ $t('setting.db_distributors') }}
                  </span>
                </div> -->
                <div class="price">
                  <span>
                    ¥ {{ commaSeperate(plan.short_term_money_amount) }}/{{ $t('setting.plan_money_month') }}
                  </span>
                </div>
              </a-col>
              <a-col class="col-button">
                <div class="button">
                  <a-button class="button_performace" @click="showModalConfirm()">
                    <div class="font__size">
                      {{ UPGRADE_PLAN_NAME.GOLD }}
                    </div>
                  </a-button>
                </div>
              </a-col>
            </div>
          </div>
        </a-col>
        <a-col
          :xs="24"
          :sm="12"
          :md="8"
          :lg="4"
          :xl="4"
          :span="24"
        >
          <div v-for="(plan, index) in plans" :key="index">
            <div v-if="plan.plan_type === UPGRADE_PLAN_TYPE.ORDER_MADE" class="box__shadow">
              <a-col>
                <div class="essentials">
                  <span class="tag_name">
                    {{ UPGRADE_PLAN_NAME.ORDER_MADE }}
                  </span>
                </div>
              </a-col>
              <a-col class="setting-info">
                <!-- <div class="pt-4">
                  <span>
                    {{ $t('setting.marketing') }}
                  </span>
                  <br />
                  <span>
                    {{ $t('setting.individuals') }}
                  </span>
                </div> -->
                <div class="price">
                  <span>
                    ¥ {{ commaSeperate(plan.short_term_money_amount) }}/{{ $t('setting.plan_money_month') }}
                  </span>
                </div>
              </a-col>
              <a-col class="col-button">
                <div class="button">
                  <a-button class="button_essentials" @click="showModalConfirm()">
                    {{ UPGRADE_PLAN_NAME.ORDER_MADE }}
                  </a-button>
                </div>
              </a-col>
            </div>
          </div>
        </a-col>
        <a-col
          :xs="24"
          :sm="12"
          :md="8"
          :lg="4"
          :xl="4"
          :span="24"
        >
          <div v-for="(plan, index) in plans" :key="index">
            <div v-if="plan.plan_type === UPGRADE_PLAN_TYPE.FREE_TRIAL" class="box__shadow">
              <a-col>
                <div class="free_trial">
                  <span class="tag_name">
                    {{ plan.name }}
                  </span>
                </div>
              </a-col>
              <a-col class="setting-info">
                <div class="contact">
                  <span>
                    {{ $t('setting.limit_days') }}
                  </span>
                  <br />
                  <span>
                    {{ $t('setting.free_trial_plan') }}
                  </span>
                </div>
              </a-col>
              <a-col class="col-button">
                <div class="button">
                  <a-button class="button_free_trial" @click="showModalConfirm()">
                    {{ $t('setting.free_trial') }}
                  </a-button>
                </div>
              </a-col>
            </div>
          </div>
        </a-col>
        <a-col
          :xs="24"
          :sm="12"
          :md="8"
          :lg="2"
          :xl="2"
          :span="24"
        />
      </a-row>
    </div>
    <div id="confirm">
      <confirm-modal
        ref="confirm"
      />
    </div>
  </div>
</template>
<script>
import ConfirmModal from '../setting/ConfirmModal.vue'
import Common from '~/mixins/common'

import {
  UPGRADE_PLAN_TYPE,
  UPGRADE_PLAN_NAME
} from '~/constants'

export default {
  components: {
    ConfirmModal
  },
  mixins: [
    Common
  ],
  async fetch() {
    this.$store.dispatch('setLoading', true)

    try {
      const { data: { result: { data } } } = await this.$api.plan.upgradePlan()
      this.plans = data.filter((value, index, self) =>
        index === self.findIndex(t => (
          t.name === value.name && t.short_term_money_amount === value.short_term_money_amount && t.plan_type === value.plan_type
        ))
      )
    } catch (_) {
      this.$notification.error({
        message: this.$t('text.something_wrong')
      })
    } finally {
      this.$store.dispatch('setLoading', false)
    }
  },
  data() {
    return {
      UPGRADE_PLAN_NAME,
      UPGRADE_PLAN_TYPE,
      plans: [],
      confirm: false,
      currentId: 0,
      activeKey: '1',
      filters: {
        name: this.$route.query.name || ''
      },
      defaultParams: {
        not_admin: 1
      }
    }
  },
  methods: {
    /**
   * Open Modal insert user
   */
    showModalConfirm() {
      this.$refs.confirm.open()
    }
  }
}
</script>

  <style scoped lang="scss">
  .text-center {
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    line-height: 23px;
    color: #000000;
  }
  .text-center{
    margin-top: 10px;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .upgrade_info{
    margin-top: 40px;
    margin-bottom: 138px;
    /deep/.ant-row {
      min-width: 1024px;
    }
  }
  .container {
    overflow-x: auto;
  }
  .box__shadow{
    text-align: center;
    width: 95%;
    height: 400px;
    box-shadow: 0 4px 24px #1f1f1f29;
  }
  .enterprise, .advanced, .performace, .essentials, .free_trial{
    padding-top: 30px;
  }
  .enterprise{
    color: #f48a6a;
  }
  .advanced{
    color: #eaaa49;
  }
  .performace{
    color: #a56dfc;
  }
  .essentials{
    color: #89afeb;
  }
  .free_trial{
    color: #7697ab;
  }
  .setting-info{
    height: 200px;
    margin-bottom: 80px;
  }
  .contact{
    font-family: 'BIZ UDGothic';
    font-weight: 500;
    padding-top: 100px;
    word-wrap: break-word;
    white-space: normal;
    color: #000000;
  }
  .pt-4{
    padding: 10px;
    font-family: 'BIZ UDGothic';
    font-weight: 500;
    word-wrap: break-word;
    white-space: normal;
    color: #000000;
  }
  .price{
    padding-top: 100px;
    padding-bottom: 15px;
    font-family: 'Open Sans';
    font-style: normal;
    font-weight: 700;
    font-size: 20px;
    line-height: 23px;
    color: #000000;
  }
  .tag_name{
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 600;
    font-size: 18px;
    line-height: 23px;
  }
  .button_enterprise{
    color: white;
    background-color: #f38c6f;
    border-color: #f38c6f;
  }
  .button_advanced{
    color: white;
    background-color: #e8a241;
    border-color: #e8a241;
  }
  .button_performace{
    color: white;
    background-color: #a36cfa;
    border-color: #a36cfa;
  }
  .button_essentials{
    color: white;
    background-color: #87adea;
    border-color: #87adea;
  }
  .button_free_trial{
    color: white;
    background-color: #7899ad;
    border-color: #7899ad;
  }
  @media (min-width: 1366px) and (max-width: 1535.98px) {
    /deep/ {
      .ant-btn {
        padding: 0 5px;
        .font__size {
          font-size: 13px;
        }
      }
    }
    .price{
      font-size: 16px;
    }
    .tag_name {
      font-size: 13px;
    }
  }
  </style>
