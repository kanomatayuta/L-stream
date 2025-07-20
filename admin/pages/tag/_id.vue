<template>
  <a-card class="mb-4">
    <template slot="title">
      {{ $t('common.edit') }} {{ $t('module.tag') }}
    </template>

    <tag-form
      :id="id"
      @save="goBack"
      @cancel="goBack"
    />
  </a-card>
</template>

<script>
import TagForm from '~/components/templates/tag/TagForm'

export default {
  components: {
    TagForm
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
