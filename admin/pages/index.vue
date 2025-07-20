<template>
  <div />
</template>

<script>

import { ROLE_TYPE } from '~/constants'

export default {
  created() {
    this.redirectTo()
  },
  methods: {
    redirectTo() {
      if (this.$auth.user.role_type === ROLE_TYPE[0].value) {
        this.$router.push({ name: 'user' })
      } else {
        this.$router.push({ name: 'kol-search' })
      }
    }
  }
}
</script>
