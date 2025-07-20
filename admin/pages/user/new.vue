<template>
  <a-card class="mb-4">
    <template slot="title">
      <span class="title">
        {{ $t('common.create') }} {{ $t('module.user') }}</span>
    </template>
    <user-form
      @save="goBack"
      @cancel="goBack"
    />
  </a-card>
</template>
<script>

import UserForm from '~/components/templates/UserForm'

export default {
  components: {
    UserForm
  },

  methods: {
    /**
     * Go to list
     */
    goBack() {
      this.$router.push({
        path: '../',
        append: true
      })
    }
  }
}
</script>
<style scoped>
 .title{
    width: 160px;
    height: 32px;
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 700;
    font-size: 32px;
    line-height: 32px;
    color: #000000;
  }
</style>
