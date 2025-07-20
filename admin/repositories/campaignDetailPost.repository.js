export default $axios => ({
  resource: 'campaignDetailPost',

  /**
   * Show detail resource
   *
   * @param {Number} kolId
   * @param {Number} campaignId
   * @returns {Object}
   */
  show(kolId, campaignId) {
    return $axios.get('campaignDetailPost/' + kolId + '/' + campaignId)
  },

  /**
   * Get list by report type
   *
   * @param {Number} type
   * @param {Number} campaignId
   * @returns {Object}
   */
  getDetails(type, campaignId) {
    return $axios.get(`campaign-detail-post/report/${type}/${campaignId}`)
  },

  getTabReportKol(campaignId) {
    return $axios.get(`campaign-report/${campaignId}`)
  },

  /**
   * update record
   *
   * @returns {Object}
   */
  multiUpdate(campaignId, data, config = {}) {
    return $axios.post(`campaign-detail-post/multiUpdate/${campaignId}`, data, config)
  },

  /**
   * Delete resource
   *
   * @param {Number} id
   * @returns {Object}
   */
  delete(id, config = {}) {
    return $axios.delete(`campaign-detail-post/${id}`, config)
  },

  /**
   * find record
   *
   * @param {Number} campaignDetailId
   * @returns {Object}
   */
  findRecord(campaignDetailId) {
    return $axios.get(`campaignDetailPost/${campaignDetailId}`)
  },

  updateCost(campaignDetailId, data) {
    return $axios.post(`campaignDetailPost/update-cost/${campaignDetailId}`, data)
  },

  /**
   * Get list by report type
   *
   * @param {Number} campaignId
   * @param {Object} data
   * @returns {Object}
   */
  createPostYoutube(campaignId, data) {
    return $axios.post(`campaignDetailPost/create-post/${campaignId}`, data)
  }

})
