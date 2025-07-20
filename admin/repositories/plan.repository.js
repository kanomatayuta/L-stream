export default $axios => ({
  resource: 'plan',

  /**
   * Forget password .
   *
   * @param {Object} data
   * @param {Object} config
   * @returns {Object}
   */
  upgradePlan(data, config = {}) {
    return $axios.get('setting/plan/upgrade', data, config)
  }
})
