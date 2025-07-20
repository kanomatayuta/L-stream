<template>
  <a-card class="mb-4">
    <template slot="title">
      {{ $t('common.create') }} {{ $t('module.genre') }}
    </template>

    <genre-form
      @save="goBack"
      @cancel="goBack"
    />
  </a-card>
</template>
<script>

import GenreForm from '~/components/templates/genre/GenreForm'

export default {
  components: { GenreForm },
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
