<template>
  <div>
    <a-card class="card__padding">
      <template slot="title">
        <span class="title">{{ $t('module.setting') }}</span>
        <a-tabs v-model="activeKey" class="mt-5" type="card" @change="changeTab">
          <a-tab-pane :key="USAGE_PLAN" class="tab_menu" :tab="$t('setting.usage_plan')">
            <a-spin :spinning="loading">
              <usage-plan :plan="setting.plan" :statistic="setting.statistic" @to-upgrade-tab="changeTab(UPGRADE)" />
            </a-spin>
          </a-tab-pane>
          <a-tab-pane :key="REGISTER_INFOMATION" class="tab_menu" :tab="$t('setting.registration_information')">
            <a-spin :spinning="loading">
              <register-infomation :user="setting" @refresh-user-info="$fetch" />
            </a-spin>
          </a-tab-pane>
          <a-tab-pane :key="UPGRADE" class="tab_menu" :tab="$t('setting.upgrade')">
            <upgrade />
          </a-tab-pane>
        </a-tabs>
      </template>
    </a-card>
  </div>
</template>
<script>

import { mapState } from 'vuex'
import UsagePlan from '~/components/templates/setting/UsagePlan.vue'
import Upgrade from '~/components/templates/setting/Upgrade.vue'
import RegisterInfomation from '~/components/templates/setting/RegisterInfomation.vue'
const DEFAULT_ACTIVE = '1'
const USAGE_PLAN = '1'
const REGISTER_INFOMATION = '2'
const UPGRADE = '3'
export default {
  components: {
    UsagePlan,
    Upgrade,
    RegisterInfomation
  },

  async fetch() {
    this.$store.dispatch('setLoading', true)

    try {
      const { data: { result: { data } } } = await this.$api.user.setting()
      this.setting = data
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
      setting: {
        plan: {},
        statistic: {}
      },
      visible: false,
      currentId: 0,
      USAGE_PLAN,
      UPGRADE,
      REGISTER_INFOMATION,
      activeKey: this.$route.query.active_key || DEFAULT_ACTIVE,
      filters: {
        name: this.$route.query.name || ''
      },
      defaultParams: {
        not_admin: 1
      }
    }
  },
  computed: {
    ...mapState({
      loading: 'loading'
    })
  },
  methods: {
    /**
     * On Change Tab
     */
    changeTab(activeKey) {
      this.activeKey = activeKey
      this.$router.push({
        query: {
          active_key: activeKey
        }
      })
    },
    /**
     * Go To tab list
     */
    onCreate() {
      this.fetch()
      this.changeTab(DEFAULT_ACTIVE)
      this.$forceUpdate()
    }
  }
}
</script>

<style lang="scss" scoped>
  .card__padding {
    padding: 0px 24px 24px 24px;
  }
  .title{
    width: 160px;
    height: 32px;
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 700;
    font-size: 32px;
    line-height: 32px;
    color: #000000;
    padding-left: 8px;
  }
  /deep/ {
  .ant-card-bordered{
    border: none;
  }
  .ant-card-head{
    border: 1px solid #e8e8e8;
  }
  .ant-card-head-title{
    padding-top: 46px;
  }
  .ant-tabs-nav-scroll{
    padding-left: 8px;
  }
  .campaign-name{
    padding-right: 44px;
    margin: 0;
  }
  .ant-tabs-bar{
    border: none;
  }
  .ant-tabs.ant-tabs-card .ant-tabs-card-bar .ant-tabs-tab{
    background: #E8E8E8;
    border-radius: 0;
    border: none;
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 13px;
    color: #000000;
    height: 38px !important;
  }
  .ant-tabs.ant-tabs-card .ant-tabs-card-bar .ant-tabs-tab-active {
    color: #fff !important;
    background: #1890ff !important;
    border: none;
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 13px;
    color: #000000;
    height: 38px !important;
  }
  }
</style>
