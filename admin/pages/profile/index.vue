<template>
  <a-card class="mb-4">
    <template slot="title">
      <font-awesome-icon icon="pencil-alt" />
      {{ $t('common.edit') }} {{ $t('module.user') }}
    </template>

    <user-form
      :id="id"
      @save="goBack"
      @cancel="goBack"
    />
  </a-card>
</template>

<script>
import { get } from 'lodash'
import UserForm from '~/components/templates/UserForm'

export default {
  components: {
    UserForm
  },

  data() {
    return {
      id: get(this, '$auth.user.id', 0)
    }
  },

  methods: {
    /**
     * Go to list
     */
    goBack() {
      this.$router.push({
        path: '/profile',
        append: true
      })
    }
  }
}
</script>
