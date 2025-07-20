<template>
  <div class="card-list">
    <a-card class="card-list">
      <template slot="title">
        <div class="title">
          {{ $t('module.insight-list') }}
        </div>
        <div class="social_option">
          <a-radio-group v-model="social_type" @change="changeTab(social_type)">
            <a-radio-button
              value="1"
            >
              <img
                :src="'/images/social/logo-instagram.svg'"
                class="social-img"
              />
              <span class="tab-title">{{ $t('common.instagram') }}</span>
            </a-radio-button>
            <a-radio-button value="2">
              <img
                :src="'/images/social/logo-youtube.svg'"
                class="social-img"
              />
              <span class="tab-title">{{ $t('common.youtube') }}</span>
            </a-radio-button>
            <a-radio-button value="3">
              <img
                :src="'/images/social/logo-tiktok.svg'"
                class="social-img"
              />
              <span class="tab-title">{{ $t('common.tiktok') }}</span>
            </a-radio-button>
          </a-radio-group>
        </div>
      </template>
      <div class="social_components">
        <KolInstagramInsightList
          v-if="social_type === '1'"
          ref="KolInstagramInsightList"
          :social="social_type"
        />
        <KolYoutubeInsightList
          v-else-if="social_type === '2'"
          ref="KolYoutubeInsightList"
          :social="social_type"
        />
        <KolTikTokInsightList
          v-else
          ref="KolTikTokInsightList"
          :social="social_type"
        />
      </div>
    </a-card>
  </div>
</template>
<script>
import KolInstagramInsightList from '~/components/templates/insightList/KolInstagramInsightList'
import KolYoutubeInsightList from '~/components/templates/insightList/KolYoutubeInsightList'
import KolTikTokInsightList from '~/components/templates/insightList/KolTikTokInsightList'
export default {
  components: {
    KolInstagramInsightList,
    KolYoutubeInsightList,
    KolTikTokInsightList
  },

  data() {
    return {
      resource: 'kol',
      social_type: '1'
    }
  },

  methods: {
    /**
     * Get URL image
     */
    getSrc(src) {
      if (src) {
        return require(`~/static/images/${src}`)
      }
      return ''
    },
    changeTab(socialType) {
      this.$router.push({
        query: {
          social_type: socialType
        }
      })
    }
  }
}
</script>
<style lang="scss" scoped>
/deep/ {
  // Css Ant Card
  .card-list {
    .ant-card-head {
      margin-left: 28px;
      padding-top: 30px;
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
  .ant-radio-button-wrapper-checked:not(.ant-radio-button-wrapper-disabled)::before,
  .ant-radio-button-wrapper:not(:first-child)::before {
    background-color: transparent !important;
  }
  label.ant-radio-button-wrapper {
    border-radius: 4px;
  }
  // Css Ant Card
  .card-insight-list {
    .ant-card-body, .ant-card-head {
      padding: 24px;
      border: 1px solid #e8e8e8;
    }
  }

  .card-insight-list.ant-card.ant-card-bordered {
    border: none;
  }
}
</style>
