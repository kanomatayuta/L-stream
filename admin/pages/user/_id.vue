<template>
  <a-card class="mb-4">
    <template slot="title">
      <span class="font__icon"><font-awesome-icon icon="pencil-alt" /></span>
      <span class="title"> {{ $t('common.edit') }} {{ $t('module.user') }}</span>
    </template>

    <user-form
      :id="id"
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

  data() {
    return {
      id: +this.$route.params.id || 0
    }
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
.font__icon{
  font-size: 28px;
  margin-right: 12px;
}
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
