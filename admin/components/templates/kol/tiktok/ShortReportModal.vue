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
      <div class="modal_content kol-modal text-center">
        <a-card>
          <div
            class="close-button"
            @click="onClose"
          >
            <a-icon type="close" />
          </div>
          <img
            alt="avatar"
            :src="user.avatar_url ? user.avatar_url : '/images/user.jpg'"
            class="rounded-circle border-circle"
          />
          <div class="blog-info">
            <span class="name">{{ user.title }}</span>
          </div>
          <div class="blog-info row">
            <img
              :src="'/images/tiktok.png'"
              class="icon-tiktok"
            />
            <span class="instagram">
              <a
                :href="TIKTOK_URL + user.username"
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
                    :src="'/images/Users.png'"
                    class="r"
                  />
                  <div v-if="metrics.subscribers_count" class="kol-index-card-number">
                    <span>{{ getNumber(metrics.subscribers_count.value) }}</span>
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
              <a-col :span="12" class="kol-index-col">
                <a-card :bordered="true" class="kol-index-card">
                  <img
                    :src="'/images/Infinity.png'"
                    class="r"
                  />
                  <div v-if="metrics.er" class="kol-index-card-number">
                    <span>{{ getNumber(metrics.er.value) }}</span>
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
              <a-col :span="12" class="kol-index-col">
                <a-card :bordered="true" class="kol-index-card">
                  <font-awesome-icon icon="eye" class="eye__color" />
                  <div v-if="metrics.views_avg" class="kol-index-card-number">
                    <span>{{ getNumber(metrics.views_avg.value) }}</span>
                  </div>
                  <div class="kol-index-card-text">
                    <span>{{ $t('kol.play_average') }}</span>
                  </div>
                  <a-tooltip placement="top">
                    <template slot="title">
                      <span>{{ $t('kol.views_avg_issue') }}</span>
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
                    :src="'/images/like_icon.jpg'"
                    class="r"
                    width="32px"
                  />
                  <div v-if="(metrics.likes_count && metrics.media_count)" class="kol-index-card-number">
                    <span>{{ getNumberAvg(metrics.likes_count.value / metrics.media_count.value) }}</span>
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
            </a-row>
          </div>
          <div class="follower-analysis">
            <img src="/images/UsersBorder.png" />
            <span class="title-bolder">
              {{ $t('kol.follower_data') }}
            </span>
            <a-tooltip placement="top">
              <template slot="title">
                <span>{{ $t('kol.follower_analysis_issue') }}</span>
              </template>
              <img
                src="/images/Info.png"
                alt="Info"
              />
            </a-tooltip>
            <div class="kol-dashboard text-center">
              <a-row class="kol-dashboard-row">
                <a-col :span="12" class="kol-index-col">
                  <a-card :bordered="true" class="kol-index-card">
                    <img
                      :src="'/images/user_icon_tiktok.png'"
                      width="40px"
                      class="r"
                    />
                    <div v-if="features.audience_by_type" class="kol-index-card-number">
                      <span>{{ getNumber(features.audience_by_type.data.infs) }}</span>
                    </div>
                    <div class="kol-index-card-text">
                      <span>{{ $t('kol.infs_rate') }}</span>
                    </div>
                    <a-tooltip placement="top">
                      <template slot="title">
                        <span>{{ $t('kol.infs_rate_issue') }}</span>
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
                          <span>{{ $t('kol.gender_ratio_issue') }}</span>
                        </template>
                        <img
                          src="/images/Info.png"
                          alt="Info"
                        />
                      </a-tooltip>
                    </div>
                    <br />
                    <gender-pie v-if="features.demography" :demography-series="demographyValues" :labels="demographyLabels" />
                  </div>
                </a-col>
                <a-col :span="12" class="kol-index-col">
                  <div class="kol-index-card-progress">
                    <div class="header-issue">
                      <span>{{ $t('kol.country') }}</span>
                      <a-tooltip placement="top">
                        <template slot="title">
                          <span>{{ $t('kol.ratio_county_youtube_issue') }}</span>
                        </template>
                        <img
                          src="/images/Info.png"
                          alt="Info"
                        />
                      </a-tooltip>
                    </div>
                    <div v-for="(country, index) in audienceGeo" :key="index" class="progress">
                      <a-row class="title">
                        <a-col class="title-left" :span="12">
                          <div
                            v-for="(item, index1) in COUNTRY_LIST"
                            :key="index1"
                          >
                            <span v-if="(item.id === country.code.toUpperCase())">{{ item.value }}</span>
                          </div>
                        </a-col>
                        <a-col class="title-right" :span="12">
                          <span>{{ getNumber(country.prc) }}</span>
                        </a-col>
                      </a-row>
                      <a-progress :percent="country.prc" :show-info="false" />
                    </div>
                    <div class="header-issue mt-4">
                      <span>{{ $t('kol.language') }}</span>
                      <a-tooltip placement="top">
                        <template slot="title">
                          <span>{{ $t('kol.language_issue') }}</span>
                        </template>
                        <img
                          src="/images/Info.png"
                          alt="Info"
                        />
                      </a-tooltip>
                    </div>
                    <div v-for="(language, index) in audienceLanguages" :key="index" class="progress">
                      <a-row class="title">
                        <a-col class="title-left" :span="12">
                          <div
                            v-for="(item, index1) in COUNTRY_LIST"
                            :key="index1"
                          >
                            <span v-if="(item.id === language.title.toUpperCase())">{{ item.value }}</span>
                          </div>
                        </a-col>
                        <a-col class="title-right" :span="12">
                          <span>{{ getNumber(language.prc) }}</span>
                        </a-col>
                      </a-row>
                      <a-progress :percent="language.prc" :show-info="false" />
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
            <demography-age v-if="features.audience_age" :width="demographyWidth" :series-columns="features.audience_age" />
          </div>
          <div class="poster-box mt-4">
            <div class="header-issue">
              <span>{{ $t('kol.poster') }}</span>
            </div>
            <poster v-if="metrics.er_last_posted" :posters="poster" :username="user.username" />
          </div>
        </a-card>
      </div>
    </a-skeleton>
    <div id="FullReportModal">
      <full-report-modal ref="FullReportModal" :user="user" :metrics="metrics" :features="features" />
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
  TIKTOK_URL,
  COUNTRY_LIST,
  RESPONSE_CODE_FORBIDDEN
} from '~/constants'
import GenderPie from '~/components/templates/chartReport/GenderPie.vue'
import DemographyAge from '~/components/templates/chartReport/DemographyAge.vue'
import FullReportModal from '~/components/templates/kol/tiktok/FullReportModal.vue'
import Poster from '~/components/templates/listReport/tiktok/Poster'
import Common from '~/mixins/common'

export default {
  components: {
    GenderPie,
    DemographyAge,
    FullReportModal,
    Poster
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
      data: {},
      metrics: {},
      features: {},
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
      TIKTOK_URL,
      COUNTRY_LIST,
      moment,
      isOpen: false,
      loading: false
    }
  },
  computed: {
    demographyLabels() {
      if (this.features && this.features.demography) {
        return this.features.demography.map(function(item) {
          return item.gender + '(' + (Math.round(item.value * 100) / 100) + '%)'
        })
      }
      return null
    },
    demographyValues() {
      if (this.features && this.features.demography) {
        return this.features.demography.map(function(item) {
          return (Math.round(item.value * 100) / 100)
        })
      }
      return null
    },
    audienceGeo() {
      if (this.features && this.features.audience_geo && this.features.audience_geo.data.countries) {
        return this.features.audience_geo.data.countries.slice(0, 3)
      }
      return null
    },
    audienceLanguages() {
      if (this.features && this.features.audience_languages && this.features.audience_languages.data) {
        return this.features.audience_languages.data.slice(0, 3)
      }
      return null
    },
    citiesTop() {
      if (this.user && this.user.audience_geography && this.user.audience_geography.cities_top) {
        return this.user.audience_geography.cities_top.slice(0, 3)
      }
      return null
    },
    poster() {
      if (this.metrics.er_last_posted && this.metrics.er_last_posted.posters) {
        return this.metrics.er_last_posted.posters.slice(0, 4)
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
    async getReport(channel) {
      this.loading = true
      try {
        const params = {
          channel,
          social_type: 3
        }
        const { data: { result: { data } } } = await this.$api.kol.report({ params })
        this.user = data.basic
        this.metrics = data.metrics
        this.features = data.features
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
.poster-box {
  width: 435px;
}
.eye__color{
  color: orange;
  font-size: 26px;
}
.modal_content.kol-modal.text-center{
  margin-top: 0 !important;
}
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
    .icon-tiktok {
      margin-bottom: 9px;
    }
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
    .title-bolder {
      font-weight: 700;
    }
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
