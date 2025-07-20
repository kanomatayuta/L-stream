export default $axios => ({
  resource: 'kolRating',

  /**
   * create kol-rating
   *
   * @returns {Object}
   */
  create(data, config = {}) {
    return $axios.post('kol-rating', data, config)
  },

  /**
   * Show detail resource
   *
   * @param {Number} kolId
   * @param {Number} userId
   * @returns {Object}
   */
  show(kolId, userId) {
    return $axios.get('kol-rating/' + kolId + '/' + userId)
  },

  /**
   * Update resource
   *
   * @param {Number} kolId
   * @param {Number} userId
   * @param {Object} data
   * @param {Object} config
   * @returns {Object}
   */
  update(kolId, userId, data, config = {}) {
    return $axios.put(`kol-rating/${kolId}/${userId}`, data, config)
  }
})
