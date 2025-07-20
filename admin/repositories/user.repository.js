export default $axios => ({
  resource: 'user',

  /**
   * Forget password .
   *
   * @param {Object} data
   * @param {Object} config
   * @returns {Object}
   */
  forgetPassword(data, config = {}) {
    return $axios.post('forget-password', data, config)
  },

  /**
   * Update password .
   *
   * @param {Object} data
   * @param {Object} config
   * @returns {Object}
   */
  updatePassword(data, config = {}) {
    return $axios.post('update-password', data, config)
  },

  /**
   * Setting.
   *
   * @returns {Object}
   */
  setting() {
    return $axios.get('setting')
  },

  /**
   * Update User Info.
   *
   * @param {Object} data
   * @param {Object} config
   * @returns {Object}
   */
  updateUserInfo(data, config = {}) {
    return $axios.post('setting/user/update', data, config)
  },

  /**
   * Reset password.
   *
   * @param {Object} data
   * @param {Object} config
   * @returns {Object}
   */
  resetPassword(data, config = {}) {
    return $axios.post('setting/user/password', data, config)
  }
})
