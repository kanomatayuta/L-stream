<template>
  <a-card className="mb-4">
    <template slot="title" class="title__font">
      {{ $t('campaign.edit') }}
    </template>
    <campaign-form
      :id="id"
      @save="goBack"
      @cancel="goBack"
    />
  </a-card>
</template>

<script>
import CampaignForm from '~/components/templates/campaign/CampaignForm'

export default {
  validate({ params }) {
    return /^\d+$/.test(params.id)
  },
  components: {
    CampaignForm
  },

  data() {
    return {
      id: +this.$route.params.id || 0
    }
  },

  methods: {
    /**
     * Go to list campaign
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
