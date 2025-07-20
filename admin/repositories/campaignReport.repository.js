export default $axios => ({
  resource: 'campaignReport',

  /**
   * create kol-rating
   *
   * @returns {Object}
   */
  create(data, config = {}) {
    return $axios.post('campaignReport', data, config)
  },

  /**
   * Show detail resource
   *
   * @param {Number} campaignId
   * @param {Object} config
   * @returns {Object}
   */
  show(campaignId, config = {}) {
    return $axios.get(`campaignReport/${campaignId}/`, config)
  },

  /**
   * Update resource
   *
   * @param {Number} campaignId
   * @param {Object} data
   * @param {Object} config
   * @returns {Object}
   */
  update(campaignId, data, config = {}) {
    return $axios.put(`campaignReport/${campaignId}/`, data, config)
  },

  /**
   * Show detail resource
   *
   * @param {Number} campaignId
   * @param {Object} config
   * @returns {Object}
   */
  campaignReportShow(campaignId, config = {}) {
    return $axios.get(`campaignReportShow/${campaignId}/`, config)
  },

  /**
   * Show detail resource
   *
   * @param {Number} campaignId
   * @param {Object} config
   * @returns {Object}
   */
  showCampaignAuto(campaignId, config = {}) {
    return $axios.get(`showCampaignAuto/${campaignId}/`, config)
  },

  /**
   * Show detail resource
   *
   * @param {Number} campaignId
   * @param {Object} config
   * @returns {Object}
   */
  showCampaignTiktokAuto(campaignId, config = {}) {
    return $axios.get(`showCampaignTiktokAuto/${campaignId}/`, config)
  },

  /**
   * Show detail resource
   *
   * @param {Number} campaignId
   * @param {Object} config
   * @returns {Object}
   */
  showCampaignYoutubeAuto(campaignId, config = {}) {
    return $axios.get(`showCampaignYoutubeAuto/${campaignId}/`, config)
  },

  /**
   * Update resource
   *
   * @param {Number} campaignId
   * @param {Object} data
   * @param {Object} config
   * @returns {Object}
   */
  updateCampaignReport(campaignId, data, config = {}) {
    return $axios.put(`campaignReportUpdate/${campaignId}/`, data, config)
  }
})
