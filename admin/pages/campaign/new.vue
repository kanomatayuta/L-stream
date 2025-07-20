<template>
  <a-card className="mb-4">
    <template slot="title">
      {{ $t('campaign.campaign_create') }}
    </template>

    <campaign-form
      @save="goBack"
      @cancel="goBack"
    />
  </a-card>
</template>
<script>

import CampaignForm from '~/components/templates/campaign/CampaignForm'

export default {
  components: { CampaignForm },
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
<style lang="scss" scoped>
/deep/ {
  .ant-card-head{
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 700;
    font-size: 32px;
    line-height: 32px;
    color: #000000;
  }
}
</style>
