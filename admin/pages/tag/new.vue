<template>
  <a-card class="mb-4">
    <template slot="title">
      {{ $t('common.create') }} {{ $t('module.tag') }}
    </template>

    <tag-form
      @save="goBack"
      @cancel="goBack"
    />
  </a-card>
</template>
<script>

import TagForm from '~/components/templates/tag/TagForm'

export default {
  components: { TagForm },
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
