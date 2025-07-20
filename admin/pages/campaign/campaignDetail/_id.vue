<template>
  <a-card class="mb-4">
    <campaignDetail-form
      :id="id"
      @save="goBack"
      @cancel="goBack"
    />
  </a-card>
</template>

<script>
import CampaignDetailForm from '~/components/templates/campaign/CampaignDetailForm'

export default {
  components: {
    CampaignDetailForm
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
