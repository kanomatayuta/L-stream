<template>
  <a-modal
    v-model="isOpen"
    :width="modalWidth"
    :closable="false"
    height="1000px"
    :footer="null"
    @cancel="closeModal"
  >
    <a-spin :spinning="loading">
      <div ref="fullReportYoutube" class="modal_content kol-modal text-center">
        <a-card class="full-report">
          <div class="download-btn">
            <a-button
              html-type="button"
              type="primary"
              class="min-w-100"
              @click="downloadPdf"
            >
              {{ $t('module.download') }}
            </a-button>
          </div>
          <img
            v-if="user.avatar_url"
            alt="avatar"
            :src="user.avatar_url"
            class="rounded-circle border-circle avatar"
          />
          <img
            v-else
            alt="avatar"
            :src="'/images/user.jpg'"
            class="rounded-circle border-circle avatar"
          />
          <div class="blog-info">
            <span class="name">{{ user.title }}</span>
          </div>
          <div class="blog-info row">
            <span class="instagram">
              <a
                :href="YOUTUBE_URL + user.username"
                target="_blank"
              >
                @{{ user.username }}
              </a>
            </span>
          </div>
          <div class="kol-index">
            <a-row class="kol-index-row text-center">
              <a-col :span="8" class="kol-index-col">
                <a-card :bordered="true" class="kol-index-card">
                  <img
                    :src="'/images/Users.png'"
                    class="r"
                  />
                  <div v-if="metrics.subscribers_count" class="kol-index-card-number">
                    <span>{{ getNumber(metrics.subscribers_count.value) }}</span>
                  </div>
                  <div class="kol-index-card-text">
                    <span>{{ $t('kol.search_youtube_subscribers') }}</span>
                  </div>
                  <a-tooltip placement="top">
                    <template slot="title">
                      <span>{{ $t('kol.youtube_subscribers_issue') }}</span>
                    </template>
                    <img
                      src="/images/Info.png"
                      alt="Info"
                    />
                  </a-tooltip>
                </a-card>
              </a-col>
              <a-col :span="8" class="kol-index-col">
                <a-card :bordered="true" class="kol-index-card">
                  <img
                    :src="'/images/Infinity.png'"
                    class="r"
                  />
                  <div v-if="metrics.er" class="kol-index-card-number">
                    <span>{{ getNumber(metrics.er.performance.all.value) }}</span>
                  </div>
                  <div class="kol-index-card-text">
                    <span>{{ $t('kol.engagement') }}</span>
                  </div>
                  <a-tooltip placement="top">
                    <template slot="title">
                      <span>{{ $t('kol.youtube_engagement_info') }}</span>
                    </template>
                    <img
                      src="/images/Info.png"
                      alt="Info"
                    />
                  </a-tooltip>
                </a-card>
              </a-col>
              <a-col :span="8" class="kol-index-col">
                <a-card :bordered="true" class="kol-index-card">
                  <font-awesome-icon icon="eye" class="eye__color" />
                  <div v-if="metrics.video_views_avg" class="kol-index-card-number">
                    <span>{{ getNumber(metrics.video_views_avg.performance.all.value) }}</span>
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
            </a-row>
            <a-row>
              <a-col :span="8" class="kol-index-col">
                <a-card :bordered="true" class="kol-index-card">
                  <img
                    :src="'/images/message.png'"
                    class="r"
                  />
                  <div v-if="(metrics.comments_count && metrics.media_count)" class="kol-index-card-number">
                    <span>{{ getNumberAvg(metrics.comments_count.performance.all.value / metrics.media_count.value) }}</span>
                  </div>
                  <div class="kol-index-card-text">
                    <span>{{ $t('kol.average_comment') }}</span>
                  </div>
                  <a-tooltip placement="top">
                    <template slot="title">
                      <span>{{ $t('kol.avg_comment_issue') }}</span>
                    </template>
                    <img
                      src="/images/Info.png"
                      alt="Info"
                    />
                  </a-tooltip>
                </a-card>
              </a-col>
              <a-col :span="8" class="kol-index-col">
                <a-card :bordered="true" class="kol-index-card">
                  <img
                    :src="'/images/like_icon.jpg'"
                    width="32,5px"
                  />
                  <div v-if="(metrics.likes_count && metrics.media_count)" class="kol-index-card-number">
                    <span>{{ getNumberAvg(metrics.likes_count.performance.all.value / metrics.media_count.value) }}</span>
                  </div>
                  <div class="kol-index-card-text">
                    <span>{{ $t('kol.average_like') }}</span>
                  </div>
                  <a-tooltip placement="top">
                    <template slot="title">
                      <span>{{ $t('kol.avg_comment_issue') }}</span>
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
          <div class="poster-box mt-4">
            <div class="header-issue">
              <span class="video-title">{{ $t('kol.video') }}</span>
            </div>
            <poster v-if="media" :medias="media.posters_sort_by_time" />
          </div>
          <div class="follower-trend">
            <a-row>
              <a-col class="follower-trend-item col-padding">
                <a-card>
                  <div class="header-issue">
                    <span>{{ $t('kol.follower_trends') }}</span>
                    <span v-if="(metrics.follower_chart && metrics.follower_chart.numeral !== undefined)" :class="(metrics.follower_chart.numeral >= 0)?`numeral-up`:`numeral-down`">
                      <font-awesome-icon v-if="metrics.follower_chart.numeral >= 0" icon="caret-up" />
                      <font-awesome-icon v-if="metrics.follower_chart.numeral < 0" icon="caret-down" />
                      {{ metrics.follower_chart.numeral }}{{ $t('kol.percentage') }}
                    </span>
                    <a-tooltip placement="top">
                      <template slot="title">
                        <span>{{ $t('kol.follow_trend_issue') }}</span>
                      </template>
                      <img
                        src="/images/Info.png"
                        alt="Info"
                      />
                    </a-tooltip>
                  </div>
                  <follower-trend v-if="metrics.follower_chart" :labels="metrics.follower_chart.months" :demography-series="metrics.follower_chart.values" />
                </a-card>
              </a-col>
            </a-row>
          </div>
          <div class="engagement">
            <a-row>
              <a-col class="col-padding">
                <a-card>
                  <div class="engagement-trend">
                    <div class="header-issue">
                      <span>{{ $t('kol.engagement_trend_tiktok') }}</span>
                      <a-tooltip placement="top">
                        <template slot="title">
                          <span>{{ $t('kol.engagement_trend_tiktok_issue') }}</span>
                        </template>
                        <img
                          src="/images/Info.png"
                          alt="Info"
                        />
                      </a-tooltip>
                    </div>
                    <div>
                      <img
                        :src="'/images/purple-circle.png'"
                        class="r"
                        width="18px"
                      /> {{ ENGAGEMENT_TRENDS_LIKES }}
                      <img
                        :src="'/images/BLUE-CIRCLE.png'"
                        class="r"
                        width="20px"
                      /> {{ ENGAGEMENT_TRENDS_COMMENTS }}
                    </div>
                  </div>
                  <engagement-trends v-if="media" :series-options="media" />
                </a-card>
              </a-col>
            </a-row>
          </div>
          <!-- <div class="follower-trend">
            <a-row>
              <a-col class="follower-trend-item col-padding">
                <a-card>
                  <div class="header-issue">
                    <span>{{ $t('kol.follower_trends') }}</span>
                    <span v-if="user.followers_chart && user.followers_chart.numeral" :class="(user.followers_chart.numeral>0)?`numeral-up`:`numeral-down`">
                      <font-awesome-icon v-if="user.followers_chart.numeral>0" icon="caret-up" />
                      <font-awesome-icon v-if="user.followers_chart.numeral<0" icon="caret-down" />
                      {{ user.followers_chart.numeral }}
                    </span>
                    <a-tooltip placement="top">
                      <template slot="title">
                        <span>{{ $t('kol.follow_trend_issue') }}</span>
                      </template>
                      <img
                        src="/images/Info.png"
                        alt="Info"
                      />
                    </a-tooltip>
                  </div>
                  <follower-trend v-if="user.followers_chart" :labels="user.followers_chart.months" :demography-series="user.followers_chart.values" />
                </a-card>
              </a-col>
            </a-row>
          </div> -->
          <div class="transition-likes">
            <a-row>
              <a-col :span="15" class="col-padding hidden">
                <a-card>
                  <div class="header-issue">
                    <span>{{ $t('kol.transition_likes') }}
                      <span class="header-issue-percent">
                        <font-awesome-icon icon="caret-up" />
                        {{ demo.percent_up }}
                      </span>
                    </span>
                    <a-tooltip placement="top">
                      <template slot="title">
                        <span>{{ $t('kol.engagement_trend_issue') }}</span>
                      </template>
                      <img
                        src="/images/Info.png"
                        alt="Info"
                      />
                    </a-tooltip>
                  </div>
                  <transition-like />
                </a-card>
              </a-col>
            </a-row>
          </div>
          <div class="sub-title-1">
            <span>{{ $t('kol.follower_data_youtube') }}</span>
          </div>
          <follower-data :user="user" :features="features" />
          <div class="sub-title-1 hidden">
            <span>{{ $t('kol.like_data') }}</span>
            <a-tooltip placement="top">
              <template slot="title">
                <span>{{ $t('kol.follower_like_issue') }}</span>
              </template>
              <img
                src="/images/Info.png"
                alt="Info"
              />
            </a-tooltip>
          </div>
          <!-- <div id="list_report" class="list-report">
            <div class="sub-title-1">
              <img src="/images/Infinity.png" /> <span>{{ $t('kol.celebrities_followers') }}</span>
              <a-tooltip placement="top">
                <template slot="title">
                  <span>{{ $t('kol.celebrities_followers_issue') }}</span>
                </template>
                <img
                  src="/images/Info.png"
                  alt="Info"
                />
              </a-tooltip>
            </div>
            <type-table />
          </div>
          <div class="list-report">
            <div class="sub-title-1">
              <a-icon type="heart" />
              <span>{{ $t('kol.similar_account') }}</span>
            </div>
            <type-table :user="user" />
          </div> -->
          <div id="list-report" class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.report_gender') }}</span>
            </div>
            <type-percent v-if="features.demography" :items="features.demography" :columns="columnsGenders" />
          </div>
          <div class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.report_language') }}</span>
            </div>
            <type-percent-country v-if="features.audience_languages" :items="features.audience_languages.data" :columns="columnsLanguages" />
          </div>
          <div class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.report_age_ratio') }}</span>
            </div>
            <type-percent v-if="features.demography_by_age_and_gender && features.demography_by_age_and_gender.group" :items="features.demography_by_age_and_gender.group" :columns="columnsAges" />
          </div>
          <div class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.report_male_age_ratio') }}</span>
            </div>
            <type-percent v-if="features.demography_by_age_and_gender && features.demography_by_age_and_gender.male" :items="features.demography_by_age_and_gender.male" :columns="columnsAges" />
          </div>
          <div class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.report_female_age_ratio') }}</span>
            </div>
            <type-percent v-if="features.demography_by_age_and_gender && features.demography_by_age_and_gender.female" :items="features.demography_by_age_and_gender.female" :columns="columnsAges" />
          </div>
          <div class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.report_country') }}</span>
            </div>
            <type-percent-country v-if="features.audience_geo && features.audience_geo.data" :items="features.audience_geo.data" :columns="columnsCountries" />
          </div>
          <div class="poster-box mt-3">
            <div class="header-issue">
              <span>{{ $t('kol.poster') }}</span>
            </div>
            <poster v-if="media" :medias="media.posters" />
          </div>
        </a-card>
      </div>
    </a-spin>
  </a-modal>
</template>
<script>
import moment from 'moment-timezone'
import { mapState } from 'vuex'
import html2pdf from 'html2pdf.js'
import TypePercentCountry from '../../listReport/youtube/TypePercentCountry.vue'
import FollowerTrend from '~/components/templates/chartReport/FollowerTrend.vue'
import EngagementTrends from '~/components/templates/chartReport/EngagementTrends.vue'
import TransitionLike from '~/components/templates/chartReport/TransitionLike.vue'
import FollowerData from '~/components/templates/chartReport/youtube/FollowerData.vue'
// import TypeTable from '~/components/templates/listReport/TypeTable'
import TypePercent from '~/components/templates/listReport/youtube/TypePercent'
import { LANGUAGES, YOUTUBE_URL, ENGAGEMENT_TRENDS_LIKES, ENGAGEMENT_TRENDS_COMMENTS } from '~/constants'
import Common from '~/mixins/common'
import Poster from '~/components/templates/listReport/youtube/Poster'

export default {
  components: {
    Poster,
    FollowerTrend,
    EngagementTrends,
    TransitionLike,
    FollowerData,
    // TypeTable,
    TypePercent,
    TypePercentCountry
  },
  mixins: [
    Common
  ],
  props: {
    username: {
      type: String,
      default: () => ''
    },
    user: {
      type: Object,
      default: () => {}
    },
    metrics: {
      type: Object,
      default: () => {}
    },
    features: {
      type: Object,
      default: () => {}
    },
    media: {
      type: Object,
      default: () => {}
    }
  },
  data() {
    return {
      modalWidth: '800px',
      demo: {
        percent_up: '3.22%',
        percent_down: '0.22%'
      },
      colorTag: '#9A83ED',
      resource: 'kol',
      visible: false,
      moment,
      isOpen: false,
      columnsHashtag: [
        'Hashtag',
        'Percent'
      ],
      columnsMentions: [
        'Mentions',
        'Percent'
      ],
      columnsGenders: [
        'Gender',
        'Percent'
      ],
      columnsEthnic: [
        'Groups',
        'Percent'
      ],
      columnsLanguages: [
        'Language',
        'Percent'
      ],
      columnsAges: [
        'Age',
        'Percent'
      ],
      columnsCountries: [
        'Country',
        'Percent'
      ],
      columnsCities: [
        'City',
        'Percent'
      ],
      LANGUAGES,
      YOUTUBE_URL,
      ENGAGEMENT_TRENDS_LIKES,
      ENGAGEMENT_TRENDS_COMMENTS,
      characterMentions: '@',
      characterHashTag: '#'
    }
  },
  computed: {
    ...mapState({
      loading: 'loading'
    }),
    bloggerHashtags() {
      if (this.user && this.user.blogger_hashtags) {
        return this.user.blogger_hashtags.slice(0, 6)
      }
      return null
    },
    brandsMentions() {
      if (this.user && this.user.advertising_data && this.user.advertising_data.brands_mentions) {
        return this.user.advertising_data.brands_mentions.slice(0, 6)
      }
      return null
    },
    similarReport() {
      if (this.user && this.user.similar_report) {
        return this.user.similar_report.slice(0, 5)
      }
      return null
    },
    demographyLabels() {
      if (this.user && this.user.demography) {
        return this.user.demography.map(function(item) {
          return item.gender + '(' + item.gender + '%)'
        })
      }
      return null
    },
    demographyValues() {
      if (this.user && this.user.demography) {
        return this.user.demography.map(function(item) {
          return item.value
        })
      }
      return null
    }
  },
  methods: {
    /**
     * Open dialog
     */
    open() {
      this.isOpen = true
    },
    /**
     * Open dialog
     */
    closeModal() {
      this.isOpen = false
    },

    downloadPdf() {
      const setting =
          {
            margin: 2,
            filename: `${this.user.title}.pdf`,
            image: { type: 'jpeg', quality: 0.95 },
            html2canvas: { dpi: 300, scale: 2, allowTaint: true, useCORS: true, letterRendering: true },
            pagebreak: { avoid: ['#list-report'] },
            jsPDF: { unit: 'mm', format: [210, 800], orientation: 'portrait' }
          }
      html2pdf(this.$refs.fullReportYoutube, setting)
    }
  }
}
</script>
<style lang="scss" scoped>
.eye__color{
  color: orange;
  font-size: 30px;
}
.full-report{
  background: #F2F8FB;
}
.sub-title-1{
  text-align: left;
  margin-left: 5px;
  font-weight: 600;
  font-size: 16px;
  margin-bottom: 0.5rem;
  margin-top: 1rem;
}
.kol-modal{
  .border-circle {
    width: 210px;
    height: 210px;
    border-radius: 50%;
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
    .kol-index-card-progress{
      border: 1px solid #e8e8e8;
      border-radius: 5px;
      padding: 5px;
      min-height: 365px;
      .progress{
        margin-top: 20px;
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
  }
  .engagement-trend {
    display: flex;
    justify-content: space-between;
  }
  .top-3{
    text-align: left;
    margin-top: 30px;
    .header {
      font-style: normal;
      font-weight: 700;
      font-size: 13px;
      line-height: 18px;
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
    padding: 5px;
  }
  .engagement-trend {
    display: flex;
    justify-content: space-between;
  }
  .header-issue {
    text-align: left;
    span{
      font-weight: 700;
    }
    .img-issue{
      margin-left: 5px;
    }
    .numeral-up{
      color: rgb(0, 0, 255);
    }
    .numeral-down{
      color: rgb(255, 0, 0);
    }
  }
  .box-hastag {
    margin-top: 30px;
  }
  .account-similar {
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    padding: 5px;
    .border-circle{
      color: transparent;
      display: inline-block;
      width: 45px;
      height: 45px;
      border-radius: 50%;
      margin-top: 0.5rem;
    }
    .account-similar-info {
      text-align: left;
      margin-left: 5px;
      .full-mame{
        font-size: 14px;
        font-weight: 600;
      }
    }
  }
  .engagement{
    .ant-row{
      .card-similar{
        .ant-card{
          min-height: 436px;
        }
      }
    }
  }
  .col-padding {
    padding: 5px;
  }
  .hashtag{
    text-align: left;
    div{
      .tag{
        background: #8d6bf7;
        border-radius: 20px;
        margin: 0.2rem 0.3rem 0.2rem 0.2rem;
        padding: 0 0.5rem;
        color: #fff;
      }
    }
  }
}
.hash-tag-card{
  //min-height: 436px;
}
.hidden{
  display: none;
}
.video-title {
  margin-left: 5px;
}
.download-btn {
  float: right;
}
.avatar {
  margin-left: 115px;
}
</style>
