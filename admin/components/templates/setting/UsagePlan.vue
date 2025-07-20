<template>
  <div class="box__shadow">
    <div class="box__title">
      <span
        class="tab_title"
      >
        {{ $t('module.UsagePlan') }}{{ plan.name }}
      </span>
    </div>
    <div class="button_usage_form">
      <a-button class="button_usage" @click="goToUpgradeTab">
        <span>{{ $t('common.plan_change') }}</span>
      </a-button>
    </div>
    <div v-if="plan.plan_type !== UPGRADE_PLAN_TYPE.FREE_TRIAL && statistic" class="info_usage">
      <span class="available">{{ $t('setting.available') }}</span>

      <template v-if="in_duration_time === true">
        <a-row class="mt-4">
          <a-col :span="15">
            <div>{{ $t('plan.page_search_number') }}</div>
          </a-col>
          <a-col :span="9">
            <div v-if="this.$auth.user.plan_id === 5" class="flex__box">
              <div class="mr-2">
                <span class="font_family">{{ statistic.page_search_number ? statistic.page_search_number : 0 }}</span>
                {{ OF }}
                <span class="font_family">{{ this.$auth.user.page_search_number ? this.$auth.user.page_search_number : 0 }}</span>
              </div>
              <a-progress
                :percent="calculatePercentage(statistic.page_search_number, this.$auth.user.page_search_number)"
                class="progress"
                :show-info="false"
              />
            </div>
            <div v-else class="flex__box">
              <div class="mr-2">
                <span class="font_family">{{ statistic.page_search_number ? statistic.page_search_number : 0 }}</span>
                {{ OF }}
                <span class="font_family">{{ plan.page_search_number ? plan.page_search_number : 0 }}</span>
              </div>
              <a-progress
                :percent="calculatePercentage(statistic.page_search_number, plan.page_search_number)"
                class="progress"
                :show-info="false"
              />
            </div>
          </a-col>
        </a-row>

        <a-row class="mt-3">
          <a-col :span="15">
            <div>{{ $t('plan.profile_view_number') }}</div>
          </a-col>
          <a-col :span="9">
            <div v-if="this.$auth.user.plan_id === PLAN_ID_ENTERPRISE" class="flex__box">
              <div class="mr-2">
                <span class="font_family">{{ statistic.profile_view_number ? statistic.profile_view_number : 0 }}</span>
                {{ OF }}
                <span class="font_family">{{ this.$auth.user.profile_view_number ? this.$auth.user.profile_view_number : 0 }}</span>
              </div>
              <a-progress
                :percent="calculatePercentage(statistic.profile_view_number, this.$auth.user.profile_view_number)"
                class="progress"
                :show-info="false"
              />
            </div>
            <div v-else class="flex__box">
              <div class="mr-2">
                <span class="font_family">{{ statistic.profile_view_number ? statistic.profile_view_number : 0 }}</span>
                {{ OF }}
                <span class="font_family">{{ plan.profile_view_number ? plan.profile_view_number : 0 }}</span>
              </div>
              <a-progress
                :percent="calculatePercentage(statistic.profile_view_number, plan.profile_view_number)"
                class="progress"
                :show-info="false"
              />
            </div>
          </a-col>
        </a-row>

        <a-row class="mt-3">
          <a-col :span="15">
            <div>{{ $t('plan.export_csv_number') }}</div>
          </a-col>
          <a-col :span="9">
            <div v-if="this.$auth.user.plan_id === PLAN_ID_ENTERPRISE" class="flex__box">
              <div class="mr-2">
                <span class="font_family">{{ statistic.export_csv_number ? statistic.export_csv_number : 0 }}</span>
                {{ OF }}
                <span class="font_family">{{ this.$auth.user.export_csv_number ? this.$auth.user.export_csv_number : 0 }}</span>
              </div>
              <a-progress
                :percent="calculatePercentage(statistic.export_csv_number, this.$auth.user.export_csv_number)"
                class="progress"
                :show-info="false"
              />
            </div>
            <div v-else class="flex__box">
              <div class="mr-2">
                <span class="font_family">{{ statistic.export_csv_number ? statistic.export_csv_number : 0 }}</span>
                {{ OF }}
                <span class="font_family">{{ plan.export_csv_number ? plan.export_csv_number : 0 }}</span>
              </div>
              <a-progress
                :percent="calculatePercentage(statistic.export_csv_number, plan.export_csv_number)"
                class="progress"
                :show-info="false"
              />
            </div>
          </a-col>
        </a-row>

        <a-row class="mt-3">
          <a-col :span="15">
            <div>{{ $t('plan.campaign_register_number') }}</div>
          </a-col>
          <a-col :span="9">
            <div v-if="this.$auth.user.plan_id === PLAN_ID_ENTERPRISE" class="flex__box">
              <div class="mr-2">
                <span class="font_family">{{ statistic.campaign_register_number ? statistic.campaign_register_number : 0 }}</span>
                {{ OF }}
                <span class="font_family">{{ this.$auth.user.campaign_register_number ? this.$auth.user.campaign_register_number : 0 }}</span>
              </div>
              <a-progress
                :percent="calculatePercentage(statistic.campaign_register_number, this.$auth.user.campaign_register_number)"
                class="progress"
                :show-info="false"
              />
            </div>
            <div v-else class="flex__box">
              <div class="mr-2">
                <span class="font_family">{{ statistic.campaign_register_number ? statistic.campaign_register_number : 0 }}</span>
                {{ OF }}
                <span class="font_family">{{ plan.campaign_register_number ? plan.campaign_register_number : 0 }}</span>
              </div>
              <a-progress
                :percent="calculatePercentage(statistic.campaign_register_number, plan.campaign_register_number)"
                class="progress"
                :show-info="false"
              />
            </div>
          </a-col>
        </a-row>
      </template>

      <template v-if="in_duration_time === false">
        <a-row class="mt-4">
          <a-col :span="15">
            <div>{{ $t('plan.page_search_number') }}</div>
          </a-col>
          <a-col :span="9">
            <div class="flex__box">
              <div class="mr-2">
                <span class="font_family">0</span>
                {{ OF }}
                <span class="font_family">0</span>
              </div>
              <a-progress
                :percent="calculatePercentage()"
                class="progress"
                :show-info="false"
              />
            </div>
          </a-col>
        </a-row>

        <a-row class="mt-3">
          <a-col :span="15">
            <div>{{ $t('plan.profile_view_number') }}</div>
          </a-col>
          <a-col :span="9">
            <div class="flex__box">
              <div class="mr-2">
                <span class="font_family">0</span>
                {{ OF }}
                <span class="font_family">0</span>
              </div>
              <a-progress
                :percent="calculatePercentage()"
                class="progress"
                :show-info="false"
              />
            </div>
          </a-col>
        </a-row>

        <a-row class="mt-3">
          <a-col :span="15">
            <div>{{ $t('plan.export_csv_number') }}</div>
          </a-col>
          <a-col :span="9">
            <div class="flex__box">
              <div class="mr-2">
                <span class="font_family">0</span>
                {{ OF }}
                <span class="font_family">0</span>
              </div>
              <a-progress
                :percent="calculatePercentage()"
                class="progress"
                :show-info="false"
              />
            </div>
          </a-col>
        </a-row>

        <a-row class="mt-3">
          <a-col :span="15">
            <div>{{ $t('plan.campaign_register_number') }}</div>
          </a-col>
          <a-col :span="9">
            <div class="flex__box">
              <div class="mr-2">
                <span class="font_family">0</span>
                {{ OF }}
                <span class="font_family">0</span>
              </div>
              <a-progress
                :percent="calculatePercentage()"
                class="progress"
                :show-info="false"
              />
            </div>
          </a-col>
        </a-row>
      </template>

      <a-row class="mt-3 usage_bot">
        <a-col>
          <div>{{ resetTime }}</div>
        </a-col>
      </a-row>
    </div>
  </div>
</template>
<script>

import moment from 'moment'
import Common from '~/mixins/common'
import { RESET_TIME_PLAN, OF, USAGE_PLAN_NAME, UPGRADE_PLAN_TYPE, PLAN_ID_ENTERPRISE } from '~/constants'

export default {
  mixins: [
    Common
  ],
  data() {
    return {
      UPGRADE_PLAN_TYPE,
      USAGE_PLAN_NAME,
      RESET_TIME_PLAN,
      PLAN_ID_ENTERPRISE,
      OF,
      visible: false,
      currentId: 0,
      activeKey: '1',
      filters: {
        name: this.$route.query.name || ''
      },
      in_duration_time: false
    }
  },
  props: {
    plan: {
      type: Object,
      default: () => {}
    },
    statistic: {
      type: Object,
      default: () => {}
    }
  },
  computed: {
    resetTime() {
      if (this.statistic.end_date) {
        const currentDate = moment()
        const endDate = moment(this.statistic.end_date)
        const numberDayLeft = endDate.diff(currentDate, 'days')
        const resetTime = this.RESET_TIME_PLAN.replace('%day_left%', numberDayLeft).replace('%year%', endDate.get('year')).replace('%month%', endDate.get('month') + 1).replace('%day%', endDate.get('date'))
        return resetTime
      }
      return null
    }
  },
  watch: {
    statistic(value) {
      if (value) {
        const currentDate = moment().format('YYYYMMDD')
        const startDate = value.start_date.replace(/-/g, '')
        const endDate = value.end_date.replace(/-/g, '')
        if (currentDate >= startDate && currentDate <= endDate) {
          this.in_duration_time = true
        }
      }
    }
  },
  methods: {
    goToUpgradeTab() {
      this.$emit('to-upgrade-tab')
    }
  }
}
</script>

<style scoped>
.flex__box {
  display: flex;
  justify-content: space-between;
  @include mq(max_lg) {
    display: inline-block;
  }
}
.progress {
  min-width: 200px;
}
.box__title {
  padding: 24px 0px 0px 30px;
}
.tab_title{
    width: 360px;
    height: 36px;
    left: 397px;
    top: 286px;

    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 700;
    font-size: 36px;
    line-height: 36px;
    /* identical to box height */
    color: #000000;
}
.button_usage{
    height: 42px;
    background: #1890FF;
}
.button_usage_form{
    padding-top: 45px;
    padding-bottom: 60px;
    padding-left: 24px
}
.button_usage span{
    width: 111px;
    height: 23.75px;
    /* 20 Gothic */
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 20px;
    line-height: 20px;
    color: #FFFFFF;
}
.info_usage{
    padding: 0 60px;
}
.available{
    width: 120px;
    height: 24px;
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 700;
    font-size: 24px;
    line-height: 24px;
    /* identical to box height */
    color: #000000;
}
.mt-4, .mt-3{
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 20px;
    line-height: 20px;
    /* identical to box height */
    color: #000000;
}
.box__shadow {
    width: 95%;
    margin-top: 8px;
    margin-left: 8px;
    margin-bottom: 32px;
    box-shadow: rgb(0 0 0 / 10%) 0px 4px 12px;
    overflow-x: auto;
}
.usage_bot{
    padding-bottom: 105px;
}
.font_family{
  font-family: 'Open Sans';
}
</style>
