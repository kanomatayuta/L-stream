<template>
  <a-card class="mb-4">
    <template slot="title">
      {{ $t('common.edit') }} {{ $t('module.kol') }}
    </template>

    <kol-form
      :id="id"
      @save="goBack"
      @cancel="goBack"
    />
  </a-card>
</template>

<script>
import KolForm from '~/components/templates/kol/KolForm'

export default {
  components: {
    KolForm
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
