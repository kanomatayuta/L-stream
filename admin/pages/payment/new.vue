<template>
  <a-card class="mb-4">
    <template slot="title">
      {{ $t('common.create') }} {{ $t('module.paymentDetail') }}
    </template>

    <paymentDetail-form
      @save="goBack"
      @cancel="goBack"
    />
  </a-card>
</template>
<script>

import PaymentDetailForm from '~/components/templates/paymentDetail/PaymentDetailForm'

export default {
  components: { PaymentDetailForm },
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
