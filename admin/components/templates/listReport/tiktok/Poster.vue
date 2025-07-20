<template>
  <div class="poster-er">
    <a-row class="poster-er-row text-center">
      <a-col
        v-for="(poster, index) in posters"
        :key="index"
        :span="posters.length === 6 ? 8 : 12"
        :class="posters.length === 6 ? 'poster-er-col-full-report' : 'poster-er-col-short-report'"
      >
        <a-card :bordered="true" class="poster-er-card">
          <div class="date">
            {{ poster.basic.year }}{{ $t('year') }}{{ poster.basic.month }}{{ $t('month') }}{{ poster.basic.day }}{{ $t('day') }}
          </div>
          <div class="image">
            <a
              :href="tiktokPostUrl"
              target="_blank"
              @click="onClickPost(poster.basic.id)"
            >
              <img
                :src="poster.basic.thumbnail"
              />
            </a>
          </div>
          <div class="er">
            <div>
              <img
                :src="'/images/like_icon.jpg'"
                class="like-image"
              />
              {{ formatter(poster.metrics.likes_count.value) }}
            </div>
            <div>
              <font-awesome-icon icon="eye" class="er-image eye__color" />
              {{ formatter(poster.metrics.views_count.value) }}
            </div>
            <div>
              <img
                :src="'/images/message.png'"
                class="er-image"
              />{{ formatter(poster.metrics.comments_count.value) }}
            </div>
          </div>
          <div class="caption">
            {{ poster.basic.text }}
          </div>
        </a-card>
      </a-col>
    </a-row>
  </div>
</template>
<script>

import {
  TIKTOK_POST_URL
} from '~/constants'

export default {
  props: {
    posters: {
      type: [Array, Object],
      default: null
    },
    username: {
      type: String,
      default: null
    }
  },
  data() {
    return {
      TIKTOK_POST_URL,
      tiktokPostUrl: ''
    }
  },
  methods: {
    formatter(value) {
      if (value < 100) {
        return (Math.round(value * 100) / 100)
      }
      if (value >= 1000000) {
        return (value / 1000000).toFixed(1).replace(/.0$/, '') + this.$t('kol.million')
      }
      if (value >= 1000) {
        return (value / 1000).toFixed(1).replace(/.0$/, '') + this.$t('kol.thousand')
      }
      if (value >= 1000000000) {
        return (value / 1000000000).toFixed(1).replace(/.0$/, '') + this.$t('kol.billion')
      }
      return value
    },
    onClickPost(id) {
      this.tiktokPostUrl = this.TIKTOK_POST_URL.replace('%username%', this.username).replace('%id%', id)
    }
  }
}
</script>
<style lang="scss" scoped>
.eye__color{
  color: orange;
}
/deep/ {
  .poster-er-col-short-report {
    padding: 5px;
    .ant-card-body {
      max-height: 325px;
      padding-left: 9px;
      padding-right: 9px;
    }
    .poster-er-card{
      .date{
        text-align: left;
        margin-bottom: 5px;
        font-weight: 700;
      }
      .image{
        img{
          width: 100%;
          height: 150px;
          vertical-align: middle;
          border-style: none;
          object-fit: cover;
        }
      }
      .er{
        display: flex;
        justify-content: start;
        font-size: 12px;
        text-align: left;
        .er-image{
          width: 20px;
        }
        .like-image{
          width: 13px;
        }
      }
      .caption{
        text-align: start;
        padding-top: 10px;
        min-height: 80px;
        display: -webkit-box;
        -webkit-line-clamp: 4;
        -webkit-box-orient: vertical;
        overflow: hidden;
        text-overflow: ellipsis;
      }
    }
  }
  .poster-er-col-full-report{
    padding: 5px;
    .ant-card-body {
      max-height: 325px;
      min-height: 325px;
      padding-left: 17px;
      padding-right: 17px;
    }
  .poster-er-card{
    .date{
      text-align: left;
      margin-bottom: 5px;
      font-weight: 700;
    }
    .image{
      img{
        width: 100%;
        height: 150px;
        vertical-align: middle;
        border-style: none;
        object-fit: cover;
      }
    }
    .er{
      display: flex;
      justify-content: start;
      font-size: 12px;
      text-align: left;
      .er-image{
        width: 20px;
      }
      .like-image{
        width: 13px;
      }
    }
    .caption{
      text-align: start;
      padding-top: 10px;
      min-height: 80px;
      display: -webkit-box;
      -webkit-line-clamp: 4;
      -webkit-box-orient: vertical;
      overflow: hidden;
      text-overflow: ellipsis;
    }
  }
}
}

</style>
