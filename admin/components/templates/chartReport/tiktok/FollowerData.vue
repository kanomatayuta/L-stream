<template>
  <div>
    <div class="fl-data wrapper-grid cs1-smil">
      <div class="grid-item">
        <img
          :src="'/images/image_fullreport_tiktok.png'"
          class="banner-img"
        />
      </div>
      <div class="grid-item grid-item-index">
        <img
          :src="'/images/user_icon_tiktok.png'"
          width="40px"
          class="r"
        />
        <div class="kol-index-card-number">
          <span class="subtitle">
            {{ features.audience_by_type.data.infs ? getNumber(features.audience_by_type.data.infs) : 0 }}
          </span>
        </div>
        <div class="kol-index-card-text">
          <span>{{ $t('kol.infs_rate') }}</span>
          <a-tooltip placement="top">
            <template slot="title">
              <span>{{ $t('kol.infs_rate_issue') }}</span>
            </template>
            <img
              src="/images/Info.png"
              alt="Info"
            />
          </a-tooltip>
        </div>
      </div>
    </div>
    <a-row>
      <a-col :span="12" class="c-inline">
        <div class="c-inline-item">
          <div class="header-issue">
            <span>{{ $t('kol.language') }}</span>
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
          <div v-for="(language, index) in audienceLanguages" :key="index" class="progress">
            <a-row class="title">
              <a-col
                class="title-left"
                :span="12"
              >
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
        <div class="c-inline-item mt-2">
          <div class="header-issue">
            <span>{{ $t('kol.similar_account') }}</span>
            <a-tooltip placement="top">
              <template slot="title">
                <span>{{ $t('kol.transition_likes_issue') }}</span>
              </template>
              <img
                src="/images/Info.png"
                alt="Info"
              />
            </a-tooltip>
            <div v-for="(item, index) in similarReport" :key="index" class="account-similar">
              <img
                alt="avatar"
                :src="item.basic.avatar_url ? item.basic.avatar_url:'/images/user.jpg'"
                class="rounded-circle border-circle"
              />
              <div class="account-similar-info">
                <div class="full-mame">
                  {{ item.basic.title }}
                </div>
                <div>@{{ item.basic.username }}</div>
              </div>
            </div>
          </div>
        </div>
      </a-col>
      <a-col :span="12" class="c-inline">
        <div class="c-inline-item">
          <div class="header-issue">
            <span>{{ $t('kol.country') }}</span>
            <a-tooltip placement="top">
              <template slot="title">
                <span>{{ $t('kol.country_follower_issue') }}</span>
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
        </div>
      </a-col>
    </a-row>
    <div class="wrapper-grid cs3-smil">
      <div class="grid-item grid-item-index">
        <div class="header-issue header__issue-gender">
          <span>{{ $t('kol.gender_ratio') }}</span>
          <a-tooltip placement="top">
            <template slot="title">
              <span>{{ $t('kol.ratio_gender_issue_tiktok') }}</span>
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
      <div class="grid-item-demography grid-item-index">
        <div class="header-issue mt-3">
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
        <demography-age v-if="features.audience_age" :height="heightDemography" :series-columns="features.audience_age" />
      </div>
    </div>
  </div>
</template>
<script>
import GenderPie from '~/components/templates/chartReport/GenderPie.vue'
import DemographyAge from '~/components/templates/chartReport/DemographyAge.vue'

import Common from '~/mixins/common'
import {
  COUNTRY_ISSUE,
  COUNTRY_LIST
} from '~/constants'

export default {
  components: {
    GenderPie,
    DemographyAge
  },
  mixins: [
    Common
  ],
  props: {
    user: {
      type: Object,
      default: null
    },
    features: {
      type: Object,
      default: null
    }
  },
  data() {
    return {
      COUNTRY_ISSUE,
      COUNTRY_LIST,
      heightDemography: 200
    }
  },
  computed: {
    audienceGeo() {
      if (this.features && this.features.audience_geo && this.features.audience_geo.data.countries) {
        return this.features.audience_geo.data.countries.slice(0, 10)
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
    similarReport() {
      if (this.user && this.user.similar_report) {
        return this.user.similar_report.slice(0, 5)
      }
      return null
    }
  },
  methods: {}
}
</script>
<style lang="scss" scoped>
.fl-data {
  min-height: 280px;
  padding: 5px;
}
.cs3-smil{
  grid-template-columns: 1fr 3fr;
}
.cs1-smil{
  grid-template-columns: 1fr 1fr;
}
.wrapper-grid {
  display: grid;
  .grid-item-demography {
    text-align: center;
    padding-left: 14px !important;
    padding-right: 14px !important;
    margin: 5px;
    .header-issue{
      width: 100%;
    }
  }
  .grid-item {
    text-align: center;
    margin: 5px;
    .header-issue.header__issue-gender {
      padding-left: 20px;
      padding-bottom: 10px;
    }
    .banner-img{
      width: 100%;
      height: 100%;
    }
    .subtitle {
      font-size: 1.5rem;
      line-height: 1.5;
      font-weight: 600;
    }
    .header-issue{
      width: 100%;
    }
  }

  .grid-item-index {
    background: #fff;
    border: 1px solid #eee;
    border-radius: 6px;
    display: flex;
    flex-direction: column;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
  }
}

.c-inline {
  padding: 5px;
  .c-inline-item {
    background-color: #fff;
    border: 1px solid #e8e8e8;
    padding: 20px;
    border-radius: 5px;
  }

  .progress {
    margin-top: 20px;

    .title {
      .title-left {
        text-align: left;
      }

      .title-right {
        text-align: right;
      }
    }
  }
}

.header-issue {
  text-align: left;

  span {
    font-weight: 700;
  }

  .img-issue {
    margin-left: 5px;
  }

  .header-issue-percent {
    color: rgb(0, 0, 255);
  }
}
</style>
