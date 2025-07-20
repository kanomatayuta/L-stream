<template>
  <a-card class="mb-4">
    <template slot="title">
      <span class="title"> {{ $t('common.edit') }} {{ $t('module.plan') }}</span>
    </template>

    <plan-form
      :id="id"
      @save="goBack"
      @cancel="goBack"
    />
  </a-card>
</template>

<script>
import PlanForm from '~/components/templates/plan/PlanForm'

export default {
  components: {
    PlanForm
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
.mb-4{
  font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    color: #000000;
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
