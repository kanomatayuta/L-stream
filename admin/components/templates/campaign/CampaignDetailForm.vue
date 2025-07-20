<template>
  <div>
    <a-card>
      <div class="d-flex">
        <a-icon type="arrow-left" class="go_back" @click="goBack()" />
        <h2 class="campaign-name">
          {{ campaign.name }}
        </h2>
        <img
          src="~/static/images/edit.png"
          alt="campaign edit"
          class="c-pointer"
          @click="showCampaign(id)"
        />
      </div>
      <div class="pt-5">
        <a-tabs v-model="activeKey" type="card" @change="changeTab">
          <a-tab-pane key="1" :tab="$t('campaign_detail.list_up')" class="p-tab">
            <TabListUp
              ref="tabListUp"
              :list-up="listUp"
              :social="campaign.social_type"
              :data="data"
              :tags="tags"
              @get-tag="getUserTag"
              @changeListUp="changeRateTag"
              @updateTabListUp="updateTabListUp()"
              @fetchData="getTabListUp"
              @change-kol="changeKol"
            />
          </a-tab-pane>
          <a-tab-pane key="2" :tab="$t('campaign_detail.post')" class="p-tab">
            <TabPost
              ref="tabPost"
              :tab-post="tabPost"
              :campaign="campaign"
              :data="data"
              :tags="tags"
              @get-tag="getUserTag"
              @updateStatus="updateStatus()"
              @updateReportTiktok="updateReportTiktok()"
              @updateReportYoutube="updateReportYoutube()"
              @change-post="changeRateTag"
              @updateCost="updateCost"
              @updateTabPost="updateTabPost()"
              @fetchData="getListKolWithStatusOk"
            />
          </a-tab-pane>
          <a-tab-pane key="3" :tab="$t('campaign_detail.report')" class="p-tab">
            <TabReport
              v-if="campaign.social_type === SNS_INSTAGRAM_TYPE"
              :id="id"
              ref="tabReport"
              :campaign="campaign"
              :kols="tabReport"
              :tags="tags"
              @get-tag="getUserTag"
              @updateDate="updateDate()"
              @changeReport="changeRateTag"
              @fetch-kol-report="getTabReport()"
              @fetchCampain="getDetail()"
            />
            <TabReportYoutube
              v-if="campaign.social_type === SNS_YOUTUBE_TYPE"
              :id="id"
              ref="tabReportYoutube"
              :campaign="campaign"
              :kols="tabReport"
              :tags="tags"
              @get-tag="getUserTag"
              @updateDate="updateDate()"
              @changeReport="changeRateTag"
              @fetch-kol-report="getTabReport()"
              @fetchCampain="getDetail()"
            />
            <TabReportTiktok
              v-if="campaign.social_type === SNS_TIKTOK_TYPE"
              :id="id"
              ref="tabReportTiktok"
              :campaign="campaign"
              :kols="tabReport"
              :tags="tags"
              @get-tag="getUserTag"
              @updateDate="updateDate()"
              @changeReport="changeRateTag"
              @fetch-kol-report="getTabReport()"
              @fetchCampain="getDetail()"
            />
          </a-tab-pane>
        </a-tabs>
      </div>
    </a-card>
  </div>
</template>
<script>
import TabListUp from '~/components/templates/campaign/TabListUp'
import TabPost from '~/components/templates/campaign/TabPost'
import TabReport from '~/components/templates/campaign/TabReport.vue'
import TabReportTiktok from '~/components/templates/campaign/TabReportTiktok.vue'
import TabReportYoutube from '~/components/templates/campaign/TabReportYoutube.vue'
import { SNS_TIKTOK_TYPE, SNS_YOUTUBE_TYPE, SNS_INSTAGRAM_TYPE } from '~/constants'
import CampaignTabReport from '~/mixins/tab-report'

const DEFAULT_ACTIVE = '1'

export default {
  components: {
    TabPost,
    TabListUp,
    TabReport,
    TabReportTiktok,
    TabReportYoutube
  },

  mixins: [
    CampaignTabReport
  ],

  data() {
    return {
      resource: 'campaignDetailPost',
      activeKey: this.$route.query.active_key || DEFAULT_ACTIVE,
      filters: {},
      data: {},
      campaign: {},
      id: +this.$route.params.id || 0,
      listUp: [],
      tabPost: [],
      tabReport: [],
      tags: [],
      recordReport: {},
      SNS_INSTAGRAM_TYPE,
      SNS_YOUTUBE_TYPE,
      SNS_TIKTOK_TYPE
    }
  },

  created() {
    this.getTabListUp()
    this.getListKolWithStatusOk()
    this.getDetail(this.id)
    this.getTabReport()
    this.getUserTag()
  },

  methods: {
    /**
     * Get User Tag
     */
    async getUserTag() {
      try {
        const { data: { result: { data } } } = await this.$api.tag.list()
        this.tags = data
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      }
    },
    /**
     * Go To tab list
     */
    onCreate() {
      this.changeTab(DEFAULT_ACTIVE)
    },
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
     * List kol tab list up
     */
    async getTabListUp() {
      this.$store.dispatch('setLoading', true)

      try {
        const params = this.$route.query
        if (this.defaultParams && typeof this.defaultParams === 'object') {
          Object.entries(this.defaultParams).forEach(([key, value]) => {
            params[key] = value
          })
        }

        const { data: { result: { data } } } = await this.$api.campaignDetail.getKol(this.id, { params })
        this.listUp = data
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    },

    /**
     * List kol tab post
     */
    async getListKolWithStatusOk() {
      this.$store.dispatch('setLoading', true)

      try {
        const params = this.$route.query
        if (this.defaultParams && typeof this.defaultParams === 'object') {
          Object.entries(this.defaultParams).forEach(([key, value]) => {
            params[key] = value
          })
        }

        const { data: { result: { data } } } = await this.$api.campaignDetail.getKolOk(this.id, { params })
        this.tabPost = data
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    },
    /**
     *  On change rate and tag
     */
    changeRateTag() {
      this.getTabListUp()
      this.getListKolWithStatusOk()
    },

    /**
     * Emit update tab list up
     */
    updateTabListUp() {
      this.getTabListUp()
      this.getListKolWithStatusOk()
      this.getDetail(this.id)
    },
    /**
     * Emit update tab list up
     */
    updateDate() {
      this.getDetail(this.id)
    },

    /**
     * Emit update tab post
     */
    updateTabPost() {
      this.getListKolWithStatusOk()
      this.getTabListUp()
      this.getTabReport()
      this.getDetail(this.id)
    },
    /**
     * Emit update cost
     */
    async getCampaignReport() {
      const { data: { result: { data } } } = await this.$api.campaignReport.campaignReportShow(this.id)
      this.model = data
    },
    async checkRecord(idDetail) {
      const { data: { result: { data } } } = await this.$api.campaignDetailPost.findRecord(idDetail)
      this.recordReport = data
      if (this.campaign.social_type === SNS_INSTAGRAM_TYPE) {
        this.getTabReport()
      }
      if (this.recordReport.length > 0) {
        if (this.campaign.social_type === SNS_INSTAGRAM_TYPE) {
          this.$refs.tabReport.getFeed()
          this.$refs.tabReport.getStory()
          this.$refs.tabReport.getReel()
          if (this.campaign.campaign_mode === 1) {
            const { data: { result: { data } } } = await this.$api.campaignReport.showCampaignAuto(this.id)
            await this.$api.campaignReport.updateCampaignReport(this.id, data)
            this.$refs.tabReport.getCampaignReport()
          }
        }
        if (this.campaign.social_type === SNS_YOUTUBE_TYPE) {
          if (this.campaign.campaign_mode === 1) {
            const { data: { result: { data } } } = await this.$api.campaignReport.showCampaignYoutubeAuto(this.id)
            await this.$api.campaignReport.updateCampaignReport(this.id, data)
            this.$refs.tabReportYoutube.getCampaignReport()
          }
        }
        if (this.campaign.social_type === SNS_TIKTOK_TYPE) {
          if (this.campaign.campaign_mode === 1) {
            const { data: { result: { data } } } = await this.$api.campaignReport.showCampaignTiktokAuto(this.id)
            await this.$api.campaignReport.updateCampaignReport(this.id, data)
            this.$refs.tabReportTiktok.getCampaignReport()
          }
        }
      }
    },
    updateCost(idDetail) {
      this.getDetail(this.id)
      this.checkRecord(idDetail)
    },

    /**
     * Table report data fetch
     *
     * @param {Number} id
     */
    async getDetail(id) {
      const { data: { result: { data } } } = await this.$api.campaign.show(this.id)
      this.data = data
      this.campaign = data.campaigns
    },

    /**
     * change status
     */
    updateStatus() {
      this.getListKolWithStatusOk()
    },

    /**
     * Go to list
     */
    goBack() {
      this.$router.push({ name: 'campaign' })
    },
    /**
     * Show campaign
     */
    showCampaign() {
      this.$router.push(`/campaign/${this.id}`)
    },

    changeKol() {
      this.getTabListUp()
      this.getDetail(this.id)
    },
    async updateReportTiktok() {
      if (this.campaign.campaign_mode === 1) {
        const { data: { result: { data } } } = await this.$api.campaignReport.showCampaignTiktokAuto(this.id)
        await this.$api.campaignReport.create(data)
      }
    },
    async updateReportYoutube() {
      if (this.campaign.campaign_mode === 1) {
        const { data: { result: { data } } } = await this.$api.campaignReport.showCampaignYoutubeAuto(this.id)
        await this.$api.campaignReport.create(data)
      }
    }
  }
}
</script>

<style lang="scss" scoped>
/deep/ {
  .campaign-name{
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 700;
    font-size: 32px;
    line-height: 44px;
    color: #000000;
  }
  .d-flex{
    display: flex;
    justify-content: start;
    align-items: center;
  }
  .c-pointer {
    cursor: pointer;
  }
  .button-color{
    background-color: #E8E8E8;
    border-radius: 0;
  }
  .button-color.active{
    background-color: #1890FF;
    color: #ffffff;
  }
  .box__shadow{
    border: 1px solid #EEEEEE;
    box-shadow: 0px 4px 5px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
  }
  .box__content{
    padding: 23px 30px;
  }
  .box__content-csv{
    display: flex;
    justify-content: end;
  }
  .rounded-circle{
    border-radius: 50%;
    width: 65px;
    height: 65px;
    object-fit: cover;
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
  }
  .go_back{
    font-size: 24px;
    font-weight: 800;
    padding-right: 15px;
    color: #000;
  }
  .p-tab{
    padding: 0 5px;
  }
  .campaign-name{
    padding-right: 44px;
    margin: 0;
  }
}
</style>
