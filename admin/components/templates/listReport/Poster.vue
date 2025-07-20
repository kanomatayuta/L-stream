<template>
  <div class="poster-er">
    <a-row class="poster-er-row text-center">
      <a-col v-for="(poster, index) in posters" :key="index" :span="8" class="poster-er-col">
        <a-card :bordered="true" class="poster-er-card">
          <div class="date">
            {{ poster.basic.year }}{{ $t('year') }}{{ poster.basic.month }}{{ $t('month') }}{{ poster.basic.day }}{{ $t('day') }}
          </div>
          <div class="image">
            <a
              :href="INSTAGRAM_POST_URL + poster.basic.code"
              target="_blank"
            >
              <img
                :src="poster.basic.thumbnail"
              />
            </a>
          </div>
          <div class="er">
            <img
              class="er-image"
              :src="'/images/Favorite_fill.png'"
            /> {{ formatter(poster.metrics.likes_count) }}
            <img
              :src="'/images/message.png'"
              class="er-image"
            /> {{ formatter(poster.metrics.comments_count) }}
          </div>
          <div class="caption">
            {{ poster.basic.caption }}
          </div>
        </a-card>
      </a-col>
    </a-row>
  </div>
</template>
<script>

import {
  INSTAGRAM_POST_URL
} from '~/constants'

export default {
  props: {
    posters: {
      type: [Array, Object],
      default: null
    }
  },
  data() {
    return {
      INSTAGRAM_POST_URL
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
.poster-er-col{
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
      text-align: left;
      .er-image{
        width: 20px;
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
</style>
