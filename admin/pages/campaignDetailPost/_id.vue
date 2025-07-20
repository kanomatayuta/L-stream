<template>
  <a-card class="mb-4">
    <template slot="title">
      {{ $t('common.edit') }} {{ $t('module.campaignDetailPost') }}
    </template>

    <campaignDetailPost-form
      :id="id"
      @save="goBack"
      @cancel="goBack"
    />
  </a-card>
</template>

<script>
import CampaignDetailPostForm from '~/components/templates/campaign/CampaignDetailPostForm'

export default {
  components: {
    CampaignDetailPostForm
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
