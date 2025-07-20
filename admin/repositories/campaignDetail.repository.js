export default $axios => ({
  resource: 'campaignDetail',

  /**
   * Register 15 Kols In Campaign
   *
   * @param {Object} data
   * @returns {Object}
   */
  registerKolsInCampaigns(data) {
    return $axios.post('campaign/detail/store/kols', data)
  },

  /**
   * Remove 15 Kols From Campaign
   *
   * @param {Object} data
   * @returns {Object}
   */
  removeKolsFromCampaign(data) {
    return $axios.post('campaign/detail/remove/kols', data)
  },

  /**
   * Get list kol
   *
   * @param {Number} campaignId
   * @param {Object} config
   * @returns {Object}
   */
  getKol(campaignId, config = {}) {
    return $axios.get(`campaignDetailKol/${campaignId}/`, config)
  },

  /**
   * Get list kol with status Ok
   *
   * @param {Number} campaignId
   * @param {Object} config
   * @returns {Object}
   */
  getKolOk(campaignId, config = {}) {
    return $axios.get(`campaignDetailKolOk/${campaignId}/`, config)
  },

  /**
   * Get Registered Campaign
   *
   * @param {Object} data
   * @returns {Object}
   */
  getRegisteredCampaign(config = {}) {
    return $axios.get('campaign-detail/registered-campaign', config)
  },

  /**
   * add kol by import file excel
   *
   * @returns {Object}
   */
  importKols(data, config = {}) {
    return $axios.post('campaign-detail/import-kols', data, config)
  }
})
