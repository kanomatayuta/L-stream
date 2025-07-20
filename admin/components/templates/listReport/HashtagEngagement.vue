<template>
  <div class="hashtag-er">
    <a-card :bordered="true" class="hashtag-er-card">
      <a-row class="hashtag-er-row">
        <a-col
          v-for="(item, index) in items"
          :key="index"
          :span="8"
          class="hashtag-er-col"
        >
          <div class="tag hashtag-cs">
            #{{ item.text }}
          </div>
          <div class="percent hashtag-cs">
            {{ getNumber(item.er_avg) }}
          </div>
        </a-col>
      </a-row>
    </a-card>
  </div>
</template>
<script>
import Common from '~/mixins/common'

export default {
  mixins: [
    Common
  ],
  props: {
    items: {
      type: Object,
      default: null
    }
  },
  data() {
    return {
    }
  }
}
</script>
<style lang="scss" scoped>
.hashtag-er{
  .hashtag-er-card{
    padding: 5px;
  }
  .hashtag-er-row{
    .hashtag-er-col{
      display: flex;
      .tag{
        background: #8d6bf7;
        border-radius: 20px;
        color: #fff;
        width: 250px !important;
        text-align: left;
        display: -webkit-box;
        -webkit-line-clamp: 1;
        -webkit-box-orient: vertical;
        overflow: hidden;
        text-overflow: ellipsis;
      }
      .hashtag-cs{
        margin: 0.2rem 0.3rem 0.2rem 0.2rem;
        padding: 0 0.5rem;
        width: 80%;
      }
    }
  }
}
</style>
