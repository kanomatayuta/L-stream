<template>
  <a-layout-footer class="layout__footer">
    <a-row
      type="flex"
      :gutter="30"
    >
      <a-col
        :span="24"
        :sm="12"
      >
        {{ YEAR }}
        <a
          :href="COMPANY_URL"
          target="_blank"
        >{{ COMPANY }}</a>
      </a-col>

      <a-col
        :span="24"
        :sm="12"
        class="col__footer--right"
      >
        <span>Powered by</span> <a
          :href="COMPANY_URL"
          target="_blank"
        >{{ COMPANY }}</a>
      </a-col>
    </a-row>
  </a-layout-footer>
</template>
<script>
import { COMPANY_URL, COMPANY, YEAR } from '~/constants'

export default {
  data() {
    return {
      COMPANY_URL,
      COMPANY,
      YEAR
    }
  }
}
</script>
<style scoped lang="scss">
.layout__footer {
  border-top: 1px solid #d8dbe0;
  @include mq(max_xs) {
    text-align: center;
  }
  .col__footer--right {
    text-align: right;
    @include mq(max_xs) {
      text-align: center;
    }
  }
}
</style>
