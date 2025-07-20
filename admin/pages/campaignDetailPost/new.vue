<template>
  <a-card class="mb-4">
    <template slot="title">
      {{ $t('common.create') }} {{ $t('module.campaignDetailPost') }}
    </template>

    <campaignDetailPost-form
      @save="goBack"
      @cancel="goBack"
    />
  </a-card>
</template>
<script>

import CampaignDetailPostForm from '~/components/templates/campaign/CampaignDetailPostForm'

export default {
  components: { CampaignDetailPostForm },
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
