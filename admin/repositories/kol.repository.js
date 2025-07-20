export default $axios => ({
  resource: 'kol',

  /**
   * Get kol list from api search HypeAuditor
   *
   * @param {Object} data
   * @param {Object} config
   * @returns {Object}
   */
  searchKol(data, config = {}) {
    return $axios.get('kol/search', data, config)
  },

  /**
   * Get kol data from api report HypeAuditor
   *
   * @param {Object} data
   * @returns {Object}
   */
  reportKol(data) {
    return $axios.get('kol/report', data)
  },

  /*
   * Get list area
   *
   * @returns {Object}
   */
  report(config = {}) {
    return $axios.get('kol/report', config)
  },

  /**
   * Get list by report type
   *
   * @param {Object} config
   * @returns {Object}
   */
  getListKolInCampaign(config = {}) {
    return $axios.get('listKolInCampaign', config)
  },

  /**
   * Get suggested username
   *
   * @param config
   * @returns {Object}
   */
  usernameSuggest(config = {}) {
    return $axios.get('username/suggest', config)
  }
})
