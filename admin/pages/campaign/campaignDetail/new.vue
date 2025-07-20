<template>
  <a-card class="mb-4">
    <template slot="title">
      {{ $t('common.create') }} {{ $t('module.campaignDetail') }}
    </template>

    <campaignDetail-form
      @save="goBack"
      @cancel="goBack"
    />
  </a-card>
</template>
<script>

import CampaignDetailForm from '~/components/templates/campaign/CampaignDetailForm'

export default {
  components: { CampaignDetailForm },
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
