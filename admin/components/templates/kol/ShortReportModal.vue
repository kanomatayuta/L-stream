<template>
  <a-drawer
    :width="width"
    :height="height"
    :closable="false"
    :visible="visible"
    :footer="null"
    class="short-report"
    @close="onClose"
  >
    <a-skeleton
      :loading="loading"
      active
      :avatar="{size: 210 }"
      :paragraph="{ rows: 6 }"
    >
      <div class="modal-button">
        <div
          class="close-button"
          @click="visible = false"
        >
          <a-icon type="close" />
        </div>
      </div>
      <div class="modal_content kol-modal text-center">
        <a-card :bordered="false">
          <img
            alt="avatar"
            :src="user.photo_url ? user.photo_url : '/images/user.jpg'"
            class="rounded-circle border-circle"
          />
          <div class="blog-info">
            <span class="name">{{ user.full_name }}</span>
          </div>
          <div class="blog-info row">
            <img
              :src="'/images/insta.png'"
              class="r"
            />
            <span class="instagram">
              <a
                :href="INSTAGRAM_URL + user.username"
                target="_blank"
              >
                @{{ user.username }}
              </a>
            </span>
          </div>
          <a-button
            html-type="button"
            type="default"
            class="min-w-100 btn-show-full"
            @click="showDetail()"
          >
            {{ $t('button.show_kol_report') }}
          </a-button>
          <div class="kol-index text-center ">
            <a-row class="kol-index-row">
              <a-col :span="12" class="kol-index-col">
                <a-card :bordered="true" class="kol-index-card">
                  <img
                    :src="'/images/Favorite_fill.png'"
                    class="r"
                  />
                  <div class="kol-index-card-number">
                    <span>{{ user.avg_likes_convert }}</span>
                  </div>
                  <div class="kol-index-card-text">
                    <span>{{ $t('kol.average_like') }}</span>
                  </div>
                  <a-tooltip placement="top">
                    <template slot="title">
                      <span>{{ $t('kol.like_issue') }}</span>
                    </template>
                    <img
                      src="/images/Info.png"
                      alt="Info"
                    />
                  </a-tooltip>
                </a-card>
              </a-col>
              <a-col :span="12" class="kol-index-col">
                <a-card :bordered="true" class="kol-index-card">
                  <img
                    :src="'/images/Users.png'"
                    class="r"
                  />
                  <div class="kol-index-card-number">
                    <span>{{ user.followers_count_convert }}</span>
                  </div>
                  <div class="kol-index-card-text">
                    <span>{{ $t('kol.follower') }}</span>
                  </div>
                  <a-tooltip placement="top">
                    <template slot="title">
                      <span>{{ $t('kol.follow_issue') }}</span>
                    </template>
                    <img
                      src="/images/Info.png"
                      alt="Info"
                    />
                  </a-tooltip>
                </a-card>
              </a-col>
              <a-col :span="12" class="kol-index-col" offset="6">
                <a-card :bordered="true" class="kol-index-card">
                  <img
                    :src="'/images/Infinity.png'"
                    class="r"
                  />
                  <div v-if="user.er" class="kol-index-card-number">
                    <span>{{ getNumber(user.er.value) }}</span>
                  </div>
                  <div class="kol-index-card-text">
                    <span>{{ $t('kol.engagement') }}</span>
                  </div>
                  <a-tooltip placement="top">
                    <template slot="title">
                      <span>{{ $t('kol.engagement_issue') }}</span>
                    </template>
                    <img
                      src="/images/Info.png"
                      alt="Info"
                    />
                  </a-tooltip>
                </a-card>
              </a-col>
            </a-row>
          </div>
          <div class="follower-analysis">
            <div class="dashboard">
              <img src="/images/UsersBorder.png" />
              <span class="dashboard_title">{{ $t('kol.follower_analysis') }}</span>
              <a-tooltip placement="top">
                <template slot="title">
                  <span>{{ $t('kol.follower_analysis_issue') }}</span>
                </template>
                <img
                  src="/images/Info.png"
                  alt="Info"
                />
              </a-tooltip>
            </div>
            <div class="kol-dashboard text-center">
              <a-row class="kol-dashboard-row">
                <a-col :span="12" class="kol-index-col">
                  <a-card :bordered="true" class="kol-index-card">
                    <img
                      :src="'/images/userplus.png'"
                      class="r"
                    />
                    <div v-if="user.audience_type" class="kol-index-card-number">
                      <span>{{ getNumber(user.aqs) }}</span>
                    </div>
                    <div class="kol-index-card-text">
                      <span>{{ $t('kol.share_rate') }}</span>
                    </div>
                    <a-tooltip placement="top">
                      <template slot="title">
                        <span>{{ $t('kol.share_rate_issue') }}</span>
                      </template>
                      <img
                        src="/images/Info.png"
                        alt="Info"
                      />
                    </a-tooltip>
                  </a-card>
                  <div class="apexchart-pie">
                    <div class="header-issue mt-2 ml-2">
                      <span>{{ $t('kol.gender_ratio') }}</span>
                      <a-tooltip placement="top">
                        <template slot="title">
                          <span>{{ $t('kol.ratio_gender_issue') }}</span>
                        </template>
                        <img
                          src="/images/Info.png"
                          alt="Info"
                        />
                      </a-tooltip>
                    </div>
                    <br />
                    <gender-pie v-if="user.demography" :demography-series="demographyValues" :labels="demographyLabels" />
                  </div>
                </a-col>
                <a-col :span="12" class="kol-index-col">
                  <div v-if="user.audience_geography" class="kol-index-card-progress">
                    <div class="header-issue mb-4">
                      <span>{{ $t('kol.country') }}</span>
                      <a-tooltip placement="top">
                        <template slot="title">
                          <span>{{ $t('kol.ratio_county_issue') }}</span>
                        </template>
                        <img
                          src="/images/Info.png"
                          alt="Info"
                        />
                      </a-tooltip>
                    </div>
                    <div v-for="(country, index) in countriesTop" :key="index" class="progress">
                      <div class="title">
                        <div class="country_name">
                          {{ country.name }}
                        </div>
                        <div>{{ getNumber(country.value) }}</div>
                      </div>
                      <a-progress :percent="country.value" :show-info="false" />
                    </div>
                    <div class="top-3">
                      <div class="header">
                        {{ $t('kol.top3') }}
                      </div>
                      <div class="content">
                        <div v-for="(city, index) in citiesTop" :key="index">
                          {{ index+1 }}. {{ city.name }}
                        </div>
                      </div>
                    </div>
                  </div>
                </a-col>
              </a-row>
            </div>
          </div>
          <div class="chart-column box-content">
            <div class="header-issue">
              <span>{{ $t('kol.age_gender_chart') }}</span>
              <a-tooltip placement="top">
                <template slot="title">
                  <span>{{ $t('kol.old_follower_issue') }}</span>
                </template>
                <img
                  src="/images/Info.png"
                  alt="Info"
                />
              </a-tooltip>
            </div>
            <demography-age v-if="user.demography_by_age" :width="demographyWidth" :series-columns="user.demography_by_age" />
          </div>
          <div class="box-content box-hastag">
            <div class="header-issue">
              <span>{{ $t('kol.popular_issue') }}</span>
              <a-tooltip placement="top">
                <template slot="title">
                  <span>{{ $t('kol.popular_full_report_issue') }}</span>
                </template>
                <img
                  src="/images/Info.png"
                  alt="Info"
                />
              </a-tooltip>
            </div>
            <div class="mention-hashtag">
              <div v-if="bloggerHashtags">
                <a-tag
                  v-for="(hashtag, index) in bloggerHashtags"
                  :key="index"
                  :color="colorTag"
                >
                  #{{ hashtag.title }}
                </a-tag>
              </div>
              <div v-if="brandsMentions">
                <a-tag
                  v-for="(brand, index) in brandsMentions"
                  :key="index"
                  :color="colorTag"
                >
                  @{{ brand.username }}
                </a-tag>
              </div>
            </div>
          </div>
        </a-card>
      </div>
    </a-skeleton>
    <div id="FullReportModal">
      <full-report-modal ref="FullReportModal" :user="user" />
    </div>
  </a-drawer>
</template>
<script>
import moment from 'moment-timezone'
import {
  LIKE_ISSUE,
  FOLLOW_ISSUE,
  ENGAGEMENT_ISSUE,
  FOLLOWER_ANALYSIS,
  GENDER_ISSUE,
  COUNTRY_ISSUE,
  AGE_GENDER_CHART_ISSUE,
  POPULAR_ISSUE,
  INSTAGRAM_URL,
  RESPONSE_CODE_FORBIDDEN
} from '~/constants'
import GenderPie from '~/components/templates/chartReport/GenderPie.vue'
import DemographyAge from '~/components/templates/chartReport/DemographyAge.vue'
import FullReportModal from '~/components/templates/kol/FullReportModal.vue'
import Common from '~/mixins/common'

export default {
  components: {
    GenderPie,
    DemographyAge,
    FullReportModal
  },
  mixins: [
    Common
  ],
  props: {
    username: {
      type: String,
      default: () => ''
    }
  },
  data() {
    return {
      width: '500px',
      demographyWidth: 400,
      height: '1000px',
      colorTag: '#9A83ED',
      user: {},
      resource: 'kol',
      visible: false,
      LIKE_ISSUE,
      ENGAGEMENT_ISSUE,
      FOLLOW_ISSUE,
      FOLLOWER_ANALYSIS,
      GENDER_ISSUE,
      COUNTRY_ISSUE,
      AGE_GENDER_CHART_ISSUE,
      POPULAR_ISSUE,
      INSTAGRAM_URL,
      moment,
      isOpen: false,
      loading: false
    }
  },
  computed: {
    demographyLabels() {
      if (this.user && this.user.demography) {
        return this.user.demography.map(function(item) {
          return item.gender + '(' + (Math.round(item.value * 100) / 100) + '%)'
        })
      }
      return null
    },
    demographyValues() {
      if (this.user && this.user.demography) {
        return this.user.demography.map(function(item) {
          return (Math.round(item.value * 100) / 100)
        })
      }
      return null
    },
    countriesTop() {
      if (this.user && this.user.audience_geography && this.user.audience_geography.countries_top) {
        return this.user.audience_geography.countries_top.slice(0, 3)
      }
      return null
    },
    citiesTop() {
      if (this.user && this.user.audience_geography && this.user.audience_geography.cities_top) {
        return this.user.audience_geography.cities_top.slice(0, 3)
      }
      return null
    },
    bloggerHashtags() {
      if (this.user && this.user.blogger_hashtags) {
        return this.user.blogger_hashtags.slice(0, 4)
      }
      return null
    },
    brandsMentions() {
      if (this.user && this.user.advertising_data) {
        return this.user.advertising_data.slice(0, 4)
      }
      return null
    }
  },
  methods: {
    /**
     * Open dialog
     */
    open() {
      this.visible = true
    },
    onClose() {
      this.visible = false
    },
    async getReport(user) {
      this.loading = true
      try {
        const params = {
          username: user,
          social_type: 1
        }
        const { data: { result: { data } } } = await this.$api.kol.report({ params })
        this.user = data.user
      } catch (e) {
        this.onClose()
        // eslint-disable-next-line no-prototype-builtins
        if (e.hasOwnProperty('response') && e.response.status === RESPONSE_CODE_FORBIDDEN) {
          this.$notification.error({
            message: this.$t(e.response.data.message_code)
          })
        } else {
          this.$notification.error({
            message: this.$t('text.something_wrong')
          })
        }
      } finally {
        this.loading = false
        this.isOpen = true
      }
    },

    /**
     * Open dialog
     */
    closeModal() {
      this.$emit('reset-form')
      this.visible = false
    },

    showDetail() {
      this.$refs.FullReportModal.open()
    }
  }
}
</script>
<style lang="scss" scoped>
.modal-button {
  padding-top: 17px;
  padding-left: 19px;
  display: flex;
  justify-content: space-between;
}
.close-button {
  width: 56px;
  height: 56px;
  background: #B9E5F9;
  align-items: center;
  justify-content: center;
  display: flex;
  border-radius: 50%;
  cursor: pointer;
  color: #1890FF;
  font-size: 18px;
}
.kol-modal{
  color: black;
  font-weight: 400;
  .age-gender-chart {
    margin-left: 15px;
    margin-top: 10px;
  }
  .border-circle {
    width: 210px;
    height: 210px;
    border-radius: 50%;
  }
  .gender-ratio {
    margin-left: 15px;
    margin-top: 10px;
  }
  .blog-info {
    padding-top: 20px;
    .name{
      font-family: 'Open Sans';
      font-size: 24px;
      font-weight: 700;
      line-height: 33px;
      letter-spacing: 0em;
      text-align: center;
      top: 20px;
    }
    .instagram{
      width: 235px;
      height: 27px;
      left: 151px;
      top: 379px;
      font-family: 'Open Sans';
      font-style: normal;
      font-weight: 400;
      font-size: 20px;
      line-height: 27px;
      text-decoration-line: underline;
      text-decoration-thickness: 1px;
      color: #1890FF;
    }
  }
  .btn-show-full{
    background: #1890FF;
    color: #fff;
    top: 15px;
  }
  .kol-index {
    padding-top: 20px;
  }
  .kol-index-col{
    padding: 5px;
    border-radius: 5px;
    min-height: 140px;
    .kol-index-card {
      .kol-index-card-number {
        font-family: 'Open Sans';
        font-style: normal;
        font-weight: 700;
        font-size: 32px;
        line-height: 44px;
        color: #000000;
      }
      .kol-index-card-text {
        font-family: 'BIZ UDGothic';
        font-style: normal;
        font-weight: 400;
        font-size: 14px;
        line-height: 14px;
        color: #000000;
      }
    }
    .apexchart-pie{
      border: 1px solid #e8e8e8;
      border-radius: 5px;
      margin-top: 10px;
      .header {
        text-align: left;
      }
    }
    .kol-index-card-progress{
      border: 1px solid #e8e8e8;
      border-radius: 5px;
      padding: 5px;
      min-height: 377px;
      .progress{
        padding: 8px;
        .title{
          .title-left{
            text-align: left;
          }
          .title-right{
            text-align: right;
          }
        }
      }
    }
    .top-3 {
      text-align: left;
      margin-left: 12px;
      margin-top: 40px;
      .header {
        font-style: normal;
        font-weight: 700;
        font-size: 13px;
        line-height: 18px;
      }
    }
  }
  .follower-analysis {
    text-align: left;
    margin-top: 20px;
    span{
      margin-left: 5px;
    }
    .img-issue{
      margin-left: 5px;
    }
  }
  .box-content{
    border: 1px solid #e8e8e8;
    margin-top: 20px;
    padding: 13px;
    border-radius: 5px;
  }
  .header-issue {
    text-align: left;
    display: flex;
    height: 18px;
    width: auto;
    margin-bottom: 5px;
    span{
      font-weight: 700;
      margin-right: 5px;
    }
  }
  .box-hastag {
    margin-top: 30px;
    border-radius: 5px;
  }
  .mention-hashtag {
    text-align: left;
    line-height: 200%;
  }
}
.short-report{
  .ant-drawer-content-wrapper{
    .ant-drawer-content{
      .ant-drawer-wrapper-body{
        .ant-drawer-body{
          padding: 0!important;
        }
      }
    }
  }
}
.title {
    font-size: 13px;
    display: flex;
    justify-content: space-between;
    .country_name {
      max-width: 100px;
    }
}
.dashboard {
  display: flex;
  align-items: center;
  .dashboard_title {
    font-size: 16px;
    font-weight: bold;
    margin-right: 5px;
  }
}

/deep/ {
  .ant-skeleton {
    display: flex;
    width: 100%;
    flex-direction: column;
    align-items: center;
    margin-top: 24px;
  }
  .ant-skeleton-content {
    width: 90%;
    h3.ant-skeleton-title {
      margin: 20px auto;
    }
  }
  .ant-card-body {
    color: black !important;
    font-weight: 400;
  }
  .ant-card-bordered {
    border-radius: 5px;
  }
  span.ant-tag {
    max-width: unset !important;
  }
}
</style>
