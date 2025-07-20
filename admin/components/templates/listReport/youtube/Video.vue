<template>
  <div class="poster-er">
    <a-row class="poster-er-row text-center">
      <a-col
        v-for="(media, index) in medias"
        :key="index"
        :span="12"
        :class="medias.length === 6 ? 'poster-er-col-with-description' : 'poster-er-col-without-description'"
      >
        <a-card :bordered="true" class="poster-er-card">
          <div class="date">
            {{ media.year }}{{ $t('year') }}{{ media.month }}{{ $t('month') }}{{ media.day }}{{ $t('day') }}
          </div>
          <div class="image">
            <a
              :href="YOUTUBE_POST_URL + media.id"
              target="_blank"
            >
              <img
                :src="media.thumbnail !== '' ? media.thumbnail : '/images/youtubedefault.jpg'"
              />
            </a>
          </div>
          <div class="er">
            <div class="like-view">
              <div v-if="media.metrics">
                <img
                  :src="'/images/like_icon.jpg'"
                  class="like-image"
                />
                {{ formatter(media.metrics.likes_count.value) }}
              </div>
              <div v-if="media.metrics">
                <font-awesome-icon icon="eye" class="er-image eye__color" />
                {{ formatter(media.metrics.views_count.value) }}
              </div>
            </div>
            <div class="dislike-comment">
              <div v-if="media.metrics.dislikes_count">
                <img
                  :src="'/images/dislike_icon.jpg'"
                  class="like-image"
                />
                {{ media.metrics.dislikes_count.value }}
              </div>
              <div v-if="media.metrics">
                <img
                  :src="'/images/message.png'"
                  class="er-image"
                /> {{ formatter(media.metrics.comments_count.value) }}
              </div>
            </div>
          </div>
          <div
            v-if="media.description"
            class="caption"
          >
            {{ media.description }}
          </div>
        </a-card>
      </a-col>
    </a-row>
  </div>
</template>
<script>

import {
  YOUTUBE_POST_URL
} from '~/constants'

export default {
  props: {
    medias: {
      type: [Array, Object],
      default: null
    }
  },
  data() {
    return {
      YOUTUBE_POST_URL
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
    }
  }
}
</script>
<style lang="scss" scoped>
.eye__color{
  color: orange;
}
/deep/ {
  .poster-er-col-with-description{
  padding: 5px;
  .ant-card-body {
    max-height: 325px;
    min-height: 325px;
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
      .er-image{
        width: 20px;
      }
      .like-image{
        width: 12px;
      }
      .like-view {
        display:block;
        padding-right: 10px
      }
      .dislike-comment {
        display:block;
        padding-left: 10px
      }
    }
    .caption{
      height: 80px;
      display: -webkit-box;
      -webkit-line-clamp: 4;
      -webkit-box-orient: vertical;
      overflow: hidden;
      text-overflow: ellipsis;
    }
  }
  }
  .poster-er-col-without-description{
  padding: 5px;
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
      .er-image{
        width: 20px;
      }
      .like-image{
        width: 12px;
      }
      .like-view {
        display:block;
        padding-right: 10px
      }
      .dislike-comment {
        display:block;
        padding-left: 10px
      }
    }
    .caption{
      height: 80px;
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
