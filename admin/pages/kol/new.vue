<template>
  <a-card class="mb-4">
    <template slot="title">
      {{ $t('common.create') }} {{ $t('module.kol') }}
    </template>

    <kol-form
      @save="goBack"
      @cancel="goBack"
    />
  </a-card>
</template>
<script>

import KolForm from '~/components/templates/kol/KolForm'

export default {
  components: { KolForm },
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
