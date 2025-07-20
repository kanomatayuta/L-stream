export default $axios => ({
  resource: 'campaign',

  /**
   * Update resource
   *
   * @param {Number} id
   * @param {Object} data
   * @param {Object} config
   * @returns {Object}
   */
  updateActive(id, data, config = {}) {
    return $axios.put(`campaign/active/${id}`, data, config)
  },

  /**
   * Update resource
   *
   * @param {Number} id
   * @param {Object} data
   * @param {Object} config
   * @returns {Object}
   */
  updateEndDate(id, data, config = {}) {
    return $axios.put(`campaign/updateEndDate/${id}`, data, config)
  },

  /**
   * Update resource
   *
   * @param {Number} id
   * @param {Object} data
   * @param {Object} config
   * @returns {Object}
   */
  updateStartDate(id, data, config = {}) {
    return $axios.put(`campaign/updateStartDate/${id}`, data, config)
  },

  /**
   * List campaign have is_active show
   *
   * @param {Object} config
   * @returns {Object}
   */
  listCampaignActive(data, config = {}) {
    return $axios.get('campaignActive', data, config)
  },

  /**
   * List campaign
   *
   * @param {Object} config
   * @returns {Object}
   */
  listCampaign(config = {}) {
    return $axios.get('listCampaign', config)
  },

  /**
   * Export Csv
   *
   * @param {Number} id
   * @returns {Object}
   */
  exportExcel(data, config = {}) {
    return $axios.post('export-kol-csv', data, config)
  },

  /**
   * Show campaign in form campaign
   *
   * @param {Number} id
   * @param {Object} config
   * @returns {Object}
   */
  showCampaign(id, config = {}) {
    return $axios.get(`showCampaign/${id}/`, config)
  },

  /**
   * List genre
   *
   * @param {Object} config
   * @returns {Object}
   */
  listGenre(config = {}) {
    return $axios.get('listGenre', config)
  }
})
