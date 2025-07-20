/*
 * Copyright 2020 Digi Dinos JSC. All rights reserved.
 * Email: tech@digidinos.com.
 */

import CreateRepository from '~/repositories/service.container'

export default ({ $axios, app }, inject) => {
  $axios.onError(error => {
    if (error.response && error.response.status === 401) {
      app.$auth.reset()
    }

    return Promise.reject(error)
  })

  inject('api', CreateRepository($axios))
}
