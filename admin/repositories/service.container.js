import RoleRepository from './role.repository'
import TagRepository from './tag.repository'
import CampaignRepository from './campaign.repository'
import CampaignDetailRepository from './campaignDetail.repository'
import CampaignDetailPostRepository from './campaignDetailPost.repository'
import GenreRepository from './genre.repository'
import KolRepository from './kol.repository'
import PlanRepository from './plan.repository'
import PaymentDetailRepository from './paymentDetail.repository'
import UserRepository from './user.repository'
import KolRatingRepository from './kolRating.repository'
import CampaignReportRepository from './campaignReport.repository'

/**
 * Make repository
 *
 * @param {Object} $axios
 * @param {String} resource
 * @returns {Object}
 */
const make = ($axios, resource) => ({
  resource,

  /**
   * Get list resources
   *
   * @param {Object} config
   * @returns {Object}
   */
  list(config = {}) {
    return $axios.get(`${this.resource}`, config)
  },

  /**
   * Create resource
   *
   * @param {Object} data
   * @param {Object} config
   * @returns {Object}
   */
  create(data, config = {}) {
    return $axios.post(`${this.resource}`, data, config)
  },

  /**
   * Show detail resource
   *
   * @param {Number} id
   * @param {Object} config
   * @returns {Object}
   */
  show(id, config = {}) {
    return $axios.get(`${this.resource}/${id}`, config)
  },

  /**
   * Update resource
   *
   * @param {Number} id
   * @param {Object} data
   * @param {Object} config
   * @returns {Object}
   */
  update(id, data, config = {}) {
    return $axios.put(`${this.resource}/${id}`, data, config)
  },

  /**
   * Delete resource
   *
   * @param {Number} id
   * @param {Object} config
   * @returns {Object}
   */
  delete(id, config = {}) {
    return $axios.delete(`${this.resource}/${id}`, config)
  }
})

/**
 * Binding repository
 *
 * @param {Object} $axios
 * @param {Functiion} createRepository
 * @returns {Object}
 */
const bind = ($axios, createRepository) => {
  const repository = createRepository($axios)
  if (!repository.resource) {
    throw new Error('Missing resource')
  }

  return {
    ...make($axios, repository.resource),
    ...repository
  }
}

export default $axios => ({
  role: bind($axios, RoleRepository),
  user: bind($axios, UserRepository),
  tag: bind($axios, TagRepository),
  campaign: bind($axios, CampaignRepository),
  campaignDetail: bind($axios, CampaignDetailRepository),
  campaignDetailPost: bind($axios, CampaignDetailPostRepository),
  genre: bind($axios, GenreRepository),
  kol: bind($axios, KolRepository),
  plan: bind($axios, PlanRepository),
  paymentDetail: bind($axios, PaymentDetailRepository),
  kolRating: bind($axios, KolRatingRepository),
  campaignReport: bind($axios, CampaignReportRepository)
})
