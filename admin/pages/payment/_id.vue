<template>
  <a-card class="mb-4">
    <template slot="title">
      {{ $t('common.edit') }} {{ $t('module.paymentDetail') }}
    </template>

    <paymentDetail-form
      :id="id"
      @save="goBack"
      @cancel="goBack"
    />
  </a-card>
</template>

<script>
import PaymentDetailForm from '~/components/templates/paymentDetail/PaymentDetailForm'

export default {
  components: {
    PaymentDetailForm
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
