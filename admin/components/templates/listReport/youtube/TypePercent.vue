<template>
  <div class="multiple-box">
    <div class="mt-root subtitle">
      <span v-for="(item, index) in columns" :key="index">{{ item }}</span>
    </div>
    <div v-for="(item, index) in items" :key="index" class="mt-root line-item">
      <span>{{ item.title ? item.title : (item.code ? item.code : (item.gender ? item.gender : '')) }}</span>
      <span>{{ getNumber(item.value ? item.value : (item.prc ? item.prc : '')) }}</span>
    </div>
  </div>
</template>
<script>
import Common from '~/mixins/common'

export default {
  mixins: [
    Common
  ],
  props: {
    columns: {
      type: Array,
      default: null
    },
    items: {
      type: [Object, Array],
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
.multiple-box{
  padding: 5px;
  .subtitle{
    border-bottom: 0.5px solid #bdbdbd;
  }
  .mt-root{
    color: #757575;
    display: flex;
    font-size: .9rem;
    padding-top: 0.25rem;
    padding-bottom: 0.25rem;
    justify-content: space-between;
  }
  .line-item{
    color: rgb(45, 55, 72);
    font-size: 14px;
    font-weight: 600;
  }
}
</style>
