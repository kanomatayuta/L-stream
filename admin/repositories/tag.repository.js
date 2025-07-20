export default $axios => ({
  resource: 'tag',

  /**
   * Create kol tag .
   *
   * @param {Object} data
   * @param {Object} config
   * @returns {Object}
   */
  createKolTag(data, config = {}) {
    return $axios.post('/create-kol-tag', data, config)
  },
  /**
   * Create kol tag .
   *
   * @param {Object} data
   * @param {Object} config
   * @returns {Object}
   */
  getKolTag(config = {}) {
    return $axios.get('/kol-tag-list', config)
  }

})
