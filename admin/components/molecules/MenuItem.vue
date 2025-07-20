<template>
  <nuxt-link
    v-if="item.link"
    :to="item.link"
  >
    <a-icon :type="item.icon" class="anticon"/>
    <span class="title">{{ $t(item.title) }}</span>
  </nuxt-link>

  <span v-else>
    <font-awesome-icon
      v-if="item.icon"
      :icon="item.icon"
      class="anticon"
    />
    <span>{{ $t(item.title) }}</span>
  </span>
</template>

<script>
export default {
  props: {
    item: {
      type: Object,
      default: () => { }
    }
  }
}
</script>
<style lang="scss" scoped>
  .anticon {
    font-size: 24px;
    margin-bottom: 5px;
    margin-right: 10px;
  }
  .title {
    font-size: 24px;
  }
</style>
