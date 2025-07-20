<template>
  <div class="multiple-box">
    <div class="mt-root subtitle">
      <span v-for="(item, index) in columns" :key="index">{{ item }}</span>
    </div>
    <div v-for="(item, index) in similar" :key="index" class="mt-root line-item">
      <span>
        <div class="column-avatar">
          <img
            alt="avatar"
            :src="item.basic.avatar_url ? item.basic.avatar_url : '/images/user.jpg'"
            class="rounded-circle border-circle"
          />
          <a slot="name">{{ item.basic.title }}</a>
        </div>
      </span>
      <span>{{ formatter(item.metrics.er) }}</span>
      <span>{{ formatter(item.metrics.subscribers_count) }}</span>
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
        'Influencers',
        'Engagements',
        'Followes'
      ]
    }
  },
  computed: {
    similar() {
      if (this.user && this.user.similar_report) {
        return this.user.similar_report.slice(0, 20)
      }
      return null
    }
  },
  methods: {
    formatter(value) {
      if (value > 1000) {
        const parts = ['K', 'M', 'B', 'T']
        const number = Math.round(value)
        const numberFormat = (number).toLocaleString(
          undefined
        )
        const convertNumber = (numberFormat).split(',')
        const countParts = convertNumber.length - 1
        const display = convertNumber[0] + (parseInt(convertNumber[1][0]) !== 0 ? '.' + convertNumber[1][0] : '') + parts[countParts - 1]
        return display
      }
      return value
    }
  }
}
</script>
<style lang="scss" scoped>
.multiple-box{
  background-color: #FFFFFF;
  text-align: left;
  padding: 5px;
  .subtitle{
    border-bottom: 0.5px solid #bdbdbd;
  }
  .mt-root{
    display: grid;
    font-size: .9rem;
    padding-top: 1rem;
    padding-bottom: 1rem;
    grid-template-columns: 2fr 1fr 1fr;
    border-bottom: 0.5px solid #bdbdbd;
  }
  .line-item {
    span{
      color: #2d3748;
      font-size: 14px;
      font-weight: 600;
    }
  }
}
.column-avatar{
  .rounded-circle{
    width: 45px;
    height: 45px;
    border-radius: 50%;
  }
  a{
    margin-left: 20px;
  }
}
</style>
