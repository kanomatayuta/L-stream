<template>
  <div>
    <div class="fl-data wrapper-grid cs2-1-1-smil">
      <div class="grid-item">
        <img
          :src="'/images/detaillikes.svg'"
          class="banner-img"
        />
      </div>
      <div class="grid-item grid-item-index">
        <img
          :src="'/images/Favorite_fill.png'"
          class="r"
        />
        <div class="">
          <span class="subtitle">{{ follower.index }}</span>
        </div>
        <div class="">
          <span>{{ $t('kol.favorite') }}</span>
          <a-tooltip placement="top">
            <template slot="title">
              <span>{{ $t('kol.favorite_issue') }}</span>
            </template>
            <img
              src="/images/Info.png"
              alt="Info"
            />
          </a-tooltip>
        </div>
      </div>
      <div class="grid-item grid-item-index">
        <div class="">
          <span class="subtitle">{{ follower.index }}</span>
        </div>
        <div class="sub-index">
          <span>{{ $t('kol.likes_from_non_followers') }}</span>
          <a-tooltip placement="top">
            <template slot="title">
              <span>{{ $t('kol.likes_from_non_followers_issue') }}</span>
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
        <div class="c-inline-item" v-if="user.audience_geography">
          <div class="header-issue">
            <span>{{ $t('kol.country') }}</span>
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
          <div class="progress" v-for="(country, index) in user.audience_geography.countries_top3" :key="index">
            <a-row class="title">
              <a-col class="title-left" :span="12">
                <span>{{ country.name }}</span>
              </a-col>
              <a-col class="title-right" :span="12">
                <span>{{ country.value }}</span>
              </a-col>
            </a-row>
            <a-progress :percent="30" :show-info="false"/>
          </div>
        </div>
      </a-col>
      <a-col :span="12" class="c-inline">
        <div class="c-inline-item" v-if="user.audience_geography">
          <div class="header-issue">
            <span>{{ $t('kol.city') }}</span>
            <a-tooltip placement="top">
              <template slot="title">
                <span>{{ $t('kol.likes_city_issue') }}</span>
              </template>
              <img
                src="/images/Info.png"
                alt="Info"
              />
            </a-tooltip>
          </div>
          <div class="progress" v-for="(country, index) in user.audience_geography.countries_top3" :key="index">
            <a-row class="title">
              <a-col class="title-left" :span="12">
                <span>{{ country.name }}</span>
              </a-col>
              <a-col class="title-right" :span="12">
                <span>{{ country.value }}</span>
              </a-col>
            </a-row>
            <a-progress :percent="30" :show-info="false"/>
          </div>
        </div>
      </a-col>
    </a-row>
    <div class="wrapper-grid cs3-smil">
      <div class="grid-item grid-item-index">
        <div class="header-issue">
          <span>{{ $t('kol.gender_ratio') }}</span>
          <a-tooltip placement="top">
            <template slot="title">
              <span>{{ $t('kol.gender_issue') }}</span>
            </template>
            <img
              src="/images/Info.png"
              alt="Info"
            />
          </a-tooltip>
        </div>
        <br />
        <gender-pie v-if="user.demography" :demographySeries="demographyValues" :labels="demographyLabels"/>
      </div>
      <div class="grid-item grid-item-index">
        <div class="header-issue">
          <span>{{ $t('kol.age_gender_chart') }}</span>
          <a-tooltip placement="top">
            <template slot="title">
              <span>{{ $t('kol.age_issue') }}</span>
            </template>
            <img
              src="/images/Info.png"
              alt="Info"
            />
          </a-tooltip>
        </div>
        <demography-age :height="demographyHeight" v-if="user.demography_by_age" :seriesColumns="user.demography_by_age" />
      </div>
    </div>
  </div>
</template>
<script>
import GenderPie from '~/components/templates/chartReport/GenderPie.vue'
import DemographyAge from '~/components/templates/chartReport/DemographyAge.vue'
import {
  KOL_SHARE_RATE,
  KOL_CITY,
  COUNTRY_ISSUE
} from '~/constants'

export default {
  components: {
    GenderPie,
    DemographyAge
  },
  props: {
    user: {
      type: Object,
      default: null
    }
  },
  data() {
    return {
      KOL_SHARE_RATE,
      KOL_CITY,
      COUNTRY_ISSUE,
      follower: {
        index: '78.15%'
      },
      demographyHeight: 160
    }
  },
  computed: {
    demographyLabels() {
      if (this.user && this.user.demography) {
        return this.user.demography.map(function(item) {
          return item.gender + '(' + item.value + '%)'
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
.cs2-1-1-smil{
  grid-template-columns: 2fr 1fr 1fr;
}
.wrapper-grid {
  display: grid;
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
