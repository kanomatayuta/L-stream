<template>
  <div class="multiple-box">
    <div class="mt-root subtitle">
      <span v-for="(item, index) in columns" :key="index">{{ item }}</span>
    </div>
    <div v-for="(item, index) in items" :key="index" class="mt-root line-item">
      <span>{{ item.title }}</span>
      <span>{{ item.like }}</span>
      <span>{{ item.follower }}</span>
    </div>
  </div>
</template>
<script>
export default {
  props: {
    user: {
      type: Object,
      default: null
    }
  },
  data() {
    return {
      columns: [
        'Column1',
        'Column2',
        'Column3'
      ],
      items: [
        {
          title: 'Title1',
          like: '608,683/66.96%',
          follower: '222,780,829/65.6%'
        },
        {
          title: 'Title2',
          like: '608,683/66.96%',
          follower: '222,780,829/65.6%'
        }
      ]
    }
  }
}
</script>
<style lang="scss" scoped>
.multiple-box{
  text-align: left;
  .subtitle{
    border-bottom: 0.5px solid #bdbdbd;
  }
  .mt-root{
    display: grid;
    font-size: .9rem;
    padding-top: 0.25rem;
    padding-bottom: 0.25rem;
    grid-template-columns: 2fr 1fr 1fr;
  }
  .line-item {
    span{
      color: #2d3748;
      font-size: 14px;
      font-weight: 600;
    }
  }
}
</style>
