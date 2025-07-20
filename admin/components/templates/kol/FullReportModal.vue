<template>
  <a-modal
    v-model="isOpen"
    :width="modalWidth"
    height="1000px"
    :footer="null"
    :closable="false"
    @cancel="closeModal"
  >
    <a-spin :spinning="loading">
      <div ref="fullReport" class="modal_content kol-modal text-center ">
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
            v-if="user.photo_url"
            alt="avatar"
            :src="user.photo_url"
            class="rounded-circle border-circle avatar"
          />
          <img
            v-else
            alt="avatar"
            :src="'/images/user.jpg'"
            class="rounded-circle border-circle avatar"
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
          <div class="kol-index">
            <a-row class="kol-index-row text-center">
              <a-col :span="8" class="kol-index-col">
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
              <a-col :span="8" class="kol-index-col">
                <a-card :bordered="true" class="kol-index-card">
                  <img
                    :src="'/images/message.png'"
                    class="r"
                  />
                  <div class="kol-index-card-number">
                    <span>{{ user.avg_comments_convert ? user.avg_comments_convert : 0 }}</span>
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
            </a-row>
            <a-row>
              <a-col :span="8" class="kol-index-col">
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
                      <span>{{ $t('kol.full_report_engagement_issue') }}</span>
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
          <div class="poster-box">
            <div class="header-issue">
              <span>{{ $t('kol.poster') }}</span>
            </div>
            <poster v-if="user.er_last_posted" :posters="user.er_last_posted.posters" />
          </div>
          <div class="follower-trend">
            <a-row>
              <a-col :span="12" class="follower-trend-item col-padding">
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
              <a-col :span="12" class="follower-trend-item col-padding">
                <a-card>
                  <div class="header-issue">
                    <span>{{ $t('kol.follow_up_trend') }}</span>
                    <a-tooltip placement="top">
                      <template slot="title">
                        <span>{{ $t('kol.follow_up_trend_issue') }}</span>
                      </template>
                      <img
                        src="/images/Info.png"
                        alt="Info"
                      />
                    </a-tooltip>
                  </div>
                  <follower-up-trend v-if="user.following_chart" :labels="user.following_chart.months" :demography-series="user.following_chart.values" />
                </a-card>
              </a-col>
            </a-row>
          </div>
          <div class="engagement">
            <a-row>
              <a-col :span="15" class="col-padding">
                <a-card>
                  <div class="engagement-trend">
                    <div class="header-issue">
                      <span>{{ $t('kol.engagement_trend') }}</span>
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
                  <engagement-trends v-if="user.er_last_posted" :series-options="user.er_last_posted" />
                </a-card>
              </a-col>
              <a-col :span="9" class="col-padding card-similar">
                <a-card class="hash-tag-card">
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
                  <div class="hashtag">
                    <div v-if="bloggerHashtags">
                      <div v-for="(hashtag, index) in bloggerHashtags" :key="index">
                        <a-tag class="tag">
                          #{{ hashtag.title }}
                        </a-tag>
                      </div>
                    </div>
                    <div v-if="brandsMentions">
                      <div v-for="(hashtag, index) in brandsMentions" :key="index">
                        <a-tag class="tag">
                          @{{ hashtag.username }}
                        </a-tag>
                      </div>
                    </div>
                  </div>
                </a-card>
              </a-col>
            </a-row>
          </div>
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
          <div v-if="user.hashtags_er" class="hashtag-engagement">
            <div class="header-issue">
              <span>{{ $t('kol.hashtag_engagement') }}</span>
              <a-tooltip placement="top">
                <template slot="title">
                  <span>{{ $t('kol.hashtag_engagement_issue') }}</span>
                </template>
                <img
                  src="/images/Info.png"
                  alt="Info"
                />
              </a-tooltip>
            </div>
            <hashtag-engagement :items="user.hashtags_er" />
          </div>
          <div class="sub-title-1">
            <span>{{ $t('kol.follower_data') }}</span>
            <a-tooltip placement="top">
              <template slot="title">
                <span>{{ $t('kol.follower_data_issue') }}</span>
              </template>
              <img
                src="/images/Info.png"
                alt="Info"
              />
            </a-tooltip>
          </div>
          <follower-data :user="user" />
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
          <like-data class="hidden" :user="user" />
          <div class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.hashtag_percent') }}</span>
            </div>
            <type-percent v-if="user.hashtag_report" :items="user.hashtag_report" :columns="columnsHashtag" :character="characterHashTag" />
          </div>
          <div class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.frequently_hashtags') }}</span>
            </div>
            <type-percent v-if="user.blogger_hashtags" :items="user.blogger_hashtags" :columns="columnsHashtag" :character="characterHashTag" />
          </div>
          <div class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.favorite_mentions') }}</span>
            </div>
            <type-percent v-if="user.favorite_mentions" :items="user.favorite_mentions" :columns="columnsMentions" :character="characterMentions" />
          </div>
          <div class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.report_gender') }}</span>
            </div>
            <type-percent v-if="user.demography" :items="user.demography" :columns="columnsGenders" />
          </div>
          <div class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.ethnic') }}</span>
            </div>
            <type-percent v-if="user.audience_ethnicity" :items="user.audience_ethnicity" :columns="columnsEthnic" />
          </div>
          <div class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.report_language') }}</span>
            </div>
            <type-percent v-if="user.audience_languages" :items="user.audience_languages" :columns="columnsLanguages" />
          </div>
          <div class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.report_age_ratio') }}</span>
            </div>
            <type-percent v-if="user.demography_by_age_and_gender && user.demography_by_age_and_gender.group" :items="user.demography_by_age_and_gender.group" :columns="columnsAges" />
          </div>
          <div class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.report_male_age_ratio') }}</span>
            </div>
            <type-percent v-if="user.demography_by_age_and_gender && user.demography_by_age_and_gender.male" :items="user.demography_by_age_and_gender.male.data" :columns="columnsAges" />
          </div>
          <div class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.report_female_age_ratio') }}</span>
            </div>
            <type-percent v-if="user.demography_by_age_and_gender && user.demography_by_age_and_gender.female" :items="user.demography_by_age_and_gender.female.data" :columns="columnsAges" />
          </div>
          <div id="report_country" class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.report_country') }}</span>
            </div>
            <type-percent v-if="user.audience_geography && user.audience_geography.countries_convert" :items="user.audience_geography.countries_convert" :columns="columnsCountries" />
          </div>
          <div id="report_city" class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.report_city') }}</span>
            </div>
            <type-percent v-if="user.audience_geography && user.audience_geography.cities" :items="user.audience_geography.cities" :columns="columnsCities" />
          </div>
          <div id="report_brand" class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.report_brand') }}</span>
            </div>
            <type-percent v-if="user.audience_brand_affinity" :items="user.audience_brand_affinity" :columns="columnsBrands" />
          </div>
          <div id="report_interest" class="list-report">
            <div class="sub-title-1">
              <span>{{ $t('kol.report_interest') }}</span>
            </div>
            <type-percent v-if="user.audience_interests" :items="user.audience_interests" :columns="columnsInterests" />
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
import FollowerTrend from '~/components/templates/chartReport/FollowerTrend.vue'
import FollowerUpTrend from '~/components/templates/chartReport/FollowerUpTrend.vue'
import EngagementTrends from '~/components/templates/chartReport/EngagementTrends.vue'
import TransitionLike from '~/components/templates/chartReport/TransitionLike.vue'
import FollowerData from '~/components/templates/chartReport/FollowerData.vue'
import LikeData from '~/components/templates/chartReport/LikeData.vue'
import TypePercent from '~/components/templates/listReport/TypePercent'
import Poster from '~/components/templates/listReport/Poster'
import HashtagEngagement from '~/components/templates/listReport/HashtagEngagement'
import { LANGUAGES, INSTAGRAM_URL, ENGAGEMENT_TRENDS_LIKES, ENGAGEMENT_TRENDS_COMMENTS } from '~/constants'
import Common from '~/mixins/common'

export default {
  components: {
    FollowerTrend,
    FollowerUpTrend,
    EngagementTrends,
    TransitionLike,
    FollowerData,
    LikeData,
    TypePercent,
    Poster,
    HashtagEngagement
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
    }
  },
  data() {
    return {
      ENGAGEMENT_TRENDS_LIKES,
      ENGAGEMENT_TRENDS_COMMENTS,
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
        'Mention',
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
      columnsBrands: [
        'Brand',
        'Percent'
      ],
      columnsInterests: [
        'Interest',
        'Percent'
      ],
      LANGUAGES,
      INSTAGRAM_URL,
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
      if (this.user && this.user.advertising_data) {
        return this.user.advertising_data.slice(0, 6)
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
    /**
     * Download full report
     */
    downloadPdf() {
      const setting =
          {
            margin: 2,
            filename: `${this.user.full_name}.pdf`,
            image: { type: 'jpeg', quality: 0.95 },
            html2canvas: { scale: 2, allowTaint: true, useCORS: true, letterRendering: true },
            pagebreak: { avoid: ['.poster-er-card', '#gender-pie', '#report_brand', '#country', '#report_interest', '#report_city', '#report_country'], mode: ['css'] },
            jsPDF: { unit: 'mm', format: [210, 800], orientation: 'portrait' }
          }
      html2pdf(this.$refs.fullReport, setting)
    }
  }
}
</script>
<style lang="scss" scoped>
.modal_content.kol-modal.text-center,
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
.download-btn {
  float: right;
}
.avatar {
  margin-left: 115px;
}
</style>
