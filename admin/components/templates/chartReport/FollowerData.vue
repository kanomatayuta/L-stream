<template>
  <div>
    <div class="fl-data wrapper-grid cs1-smil">
      <div class="grid-item">
        <img
          :src="'/images/detailfollowers.svg'"
          class="banner-img"
        />
      </div>
      <div class="grid-item grid-item-index align-center">
        <img
          :src="'/images/userplus.png'"
          class="r"
        />
        <div class="kol-index-card-number">
          <span class="subtitle">{{ user.aqs ? getNumber(user.aqs) : 0 }}</span>
        </div>
        <div class="kol-index-card-text">
          <span>{{ $t('insight.share_rate') }}</span>
          <a-tooltip placement="top">
            <template slot="title">
              <span>{{ $t('kol.shared_rate_issue') }}</span>
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
      <a-col id="country" :span="12" class="c-inline">
        <div v-if="user.audience_geography" class="c-inline-item">
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
          <div v-for="(country, index) in countriesTop" :key="index" class="progress">
            <a-row class="title">
              <a-col class="title-left" :span="12">
                <span>{{ country.name }}</span>
              </a-col>
              <a-col class="title-right" :span="12">
                <span>{{ getNumber(country.value) }}</span>
              </a-col>
            </a-row>
            <a-progress :percent="country.value" :show-info="false" />
          </div>
        </div>
      </a-col>
      <a-col :span="12" class="c-inline">
        <div v-if="user.audience_geography" class="c-inline-item">
          <div class="header-issue">
            <span>{{ $t('kol.city') }}</span>
            <a-tooltip placement="top">
              <template slot="title">
                <span>{{ $t('kol.city_follower_issue') }}</span>
              </template>
              <img
                src="/images/Info.png"
                alt="Info"
              />
            </a-tooltip>
          </div>
          <div v-for="(city, index) in citiesTop" :key="index" class="progress">
            <a-row class="title">
              <a-col class="title-left" :span="12">
                <span>{{ city.name }}</span>
              </a-col>
              <a-col class="title-right" :span="12">
                <span>{{ getNumber(city.value) }}</span>
              </a-col>
            </a-row>
            <a-progress :percent="city.value" :show-info="false" />
          </div>
        </div>
      </a-col>
    </a-row>
    <div id="gender-pie" class="wrapper-grid cs3-smil">
      <div class="grid-item grid-item-index">
        <div class="header-issue">
          <span class="pl-19">{{ $t('kol.gender_ratio') }}</span>
          <a-tooltip placement="top">
            <template slot="title">
              <span>{{ $t('kol.gender_follower_issue') }}</span>
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
      <div class="grid-item grid-item-index pt-0">
        <div class="header-issue">
          <span class="pl-19">{{ $t('kol.age_gender_chart') }}</span>
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
        <demography-age v-if="user.demography_by_age" :height="heightDemography" :series-columns="user.demography_by_age" />
      </div>
    </div>
  </div>
</template>
<script>
import GenderPie from '~/components/templates/chartReport/GenderPie.vue'
import DemographyAge from '~/components/templates/chartReport/DemographyAge.vue'
import Common from '~/mixins/common'
import {
  COUNTRY_ISSUE
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
    }
  },
  data() {
    return {
      COUNTRY_ISSUE,
      heightDemography: 200
    }
  },
  computed: {
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
  padding: 0px;
  .grid-item {
    text-align: center;
    padding-left: 1.2rem !important;
    padding-right: 1.2rem !important;
    margin: 5px;
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
    padding: 19px 0px 0px 0px !important;
  }
  .pl-19 {
   padding-left: 19px !important;
  }
  .align-center {
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
