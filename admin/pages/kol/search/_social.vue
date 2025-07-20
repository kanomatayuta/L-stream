<template>
  <div class="card-list">
    <a-card class="card-list">
      <template slot="title">
        <h5 class="title">
          {{ $t('kol.research') }}
        </h5>
        <div class="desc">
          {{ $t('kol.research_decs') }}
        </div>
        <div class="social_option">
          <a-radio-group v-model="social">
            <nuxt-link to="/kol/search">
              <a-radio-button :value="INSTAGRAM_SOCIAL.value">
                <img
                  :src="'/images/social/logo-instagram.svg'"
                  class="social-img"
                />
                Instagram
              </a-radio-button>
            </nuxt-link>
            <nuxt-link to="youtube">
              <a-radio-button :value="YOUTUBE_SOCIAL.value">
                <img
                  :src="'/images/social/logo-youtube.svg'"
                  class="social-img"
                />
                Youtube
              </a-radio-button>
            </nuxt-link>
            <nuxt-link to="tiktok">
              <a-radio-button :value="TIKTOK_SOCIAL.value">
                <img
                  :src="'/images/social/logo-tiktok.svg'"
                  class="social-img-tiktok"
                />
                TikTok
              </a-radio-button>
            </nuxt-link>
          </a-radio-group>
        </div>
      </template>
      <div class="social_components">
        <InstagramKolSearch
          v-if="social === INSTAGRAM_SOCIAL.value"
        />
        <YoutubeKolSearch
          v-if="social === YOUTUBE_SOCIAL.value"
        />
        <TiktokKolSearch
          v-if="social === TIKTOK_SOCIAL.value"
        />
      </div>
    </a-card>
  </div>
</template>
<script>
import { INSTAGRAM_SOCIAL_TYPE, TIKTOK_SOCIAL_TYPE, YOUTUBE_SOCIAL_TYPE } from '@/constants'
import InstagramKolSearch from '~/components/templates/kol/search/InstagramKolSearch'
import YoutubeKolSearch from '~/components/templates/kol/search/YoutubeKolSearch'
import TiktokKolSearch from '~/components/templates/kol/search/TiktokKolSearch'
export default {
  components: {
    InstagramKolSearch,
    YoutubeKolSearch,
    TiktokKolSearch
  },
  data() {
    return {
      social: this.$route.params.social
    }
  },
  computed: {
    INSTAGRAM_SOCIAL() {
      return INSTAGRAM_SOCIAL_TYPE
    },
    YOUTUBE_SOCIAL() {
      return YOUTUBE_SOCIAL_TYPE
    },
    TIKTOK_SOCIAL() {
      return TIKTOK_SOCIAL_TYPE
    }
  }
}
</script>
<style scoped lang="scss">
/deep/ {
  // Css Ant Card
  .card-list {
    .ant-card-head {
      margin-left: 28px;
      padding-top: 30px;
      border: none;
    }

    .ant-card-body {
      border: none;
    }

    .title {
      margin: 0px 0px 0.35em;
      font-size: 32px;
      line-height: 1.334;
      font-weight: 700;
    }

    .desc {
      margin: 0px 0px 0.35em;
      font-weight: 400;
      font-size: 1rem;
      line-height: 1.5;
    }

    .social_option {
      margin-top: 32px;

      label.ant-radio-button-wrapper {
        background-color: #e8e8e8;
        border-color: #eee;
        color: #000;
        margin-right: 3px;
      }

      label.ant-radio-button-wrapper.ant-radio-button-wrapper-checked {
        background-color: #1377eb;
        color: #fff;
        border: 1px solid #1377eb;

        img.social-img, img.social-img-tiktok  {
          filter: invert(90%) sepia(61%) saturate(2%) hue-rotate(184deg) brightness(112%) contrast(100%);
        }
      }

      img.social-img {
        height: 15px;
        width: 15px;
        line-height: 15px;
        /* display: inline-block; */
        margin-bottom: 3px;
      }
      img.social-img-tiktok {
        height: 15px;
        width: 15px;
        line-height: 15px;
        /* display: inline-block; */
        margin-bottom: 5px;
      }
    }
  }

  .card-list.ant-card.ant-card-bordered {
    border: none;
  }

  .ant-radio-button-wrapper-checked:not(.ant-radio-button-wrapper-disabled):hover::before {
    background-color: #1377eb !important;
  }

  // Css Ant Card
  .card-insight-list {
    .ant-card-body, .ant-card-head {
      padding: 0px;
      border: none;
    }
  }

  .card-insight-list.ant-card.ant-card-bordered {
    border: none;
  }

  .search_box {
    padding: 24px;
    border: 1px solid #f5f5f5;
    border-radius: 6px;
    -webkit-box-shadow: 2px 2px 10px #fafafa;
    box-shadow: 2px 2px 10px #fafafa;
  }

  // End Css Ant Card
}
</style>
