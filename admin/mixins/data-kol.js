/*
 * Copyright 2020 Digi Dinos JSC. All rights reserved.
 * Email: tech@digidinos.com.
 */

import { mapState } from 'vuex'
import {
  RESPONSE_CODE_FORBIDDEN
} from '~/constants'
export default {
  async fetch() {
    this.$store.dispatch('setLoading', true)

    try {
      const params = this.$route.query
      if (this.defaultParams && typeof this.defaultParams === 'object') {
        Object.entries(this.defaultParams).forEach(([key, value]) => {
          params[key] = value
        })
      }

      if (params.order_by && params.order_type) {
        if (params.page) {
          params.page = undefined
        }

        params.sort = {
          field: params.order_by,
          order: +params.order_type === 1 ? 'asc' : 'desc'
        }
      } else {
        params.sort = {
          field: 'subscribers_count',
          order: 'desc'
        }
      }
      if (params.profile) {
        delete params.profile
      }
      if (params.keyword) {
        delete params.keyword
      }
      if (params.hashtag) {
        delete params.hashtag
      }
      if (params.usernames) {
        delete params.usernames
      }

      const dataKolFromHypeAuditor = await this.repository.kol.searchKol({ params })
      const dataCampaign = await this.repository.campaign.listCampaignActive({ params: { social_type: params.social_type } })
      if (params.page) {
        this.dataKolFromHypeAuditor = this.dataKolFromHypeAuditor.concat(dataKolFromHypeAuditor.data.result.data.search_results)
      } else {
        this.dataKolFromHypeAuditor = dataKolFromHypeAuditor.data.result.data.search_results
      }

      this.metaKolFromHypeAuditor = dataKolFromHypeAuditor.data.result.data.meta
      this.dataCampaign = dataCampaign.data.result.data
    } catch (e) {
      // eslint-disable-next-line no-prototype-builtins
      if (e.hasOwnProperty('response') && e.response.status === RESPONSE_CODE_FORBIDDEN) {
        this.$notification.error({
          message: this.$t(e.response.data.message_code)
        })
      } else {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      }
    } finally {
      this.$store.dispatch('setLoading', false)
    }
  },

  data() {
    return {
      dataKolFromHypeAuditor: [],
      dataCampaign: [],
      metaKolFromHypeAuditor: []
    }
  },

  computed: {
    ...mapState({
      loading: 'loading'
    }),

    header() {
      return []
    },

    columns() {
      return this.header.map(item => {
        item.sortOrder = null
        if (this.$route.query.order_by === item.dataIndex && this.$route.query.order_type) {
          item.sortOrder = +this.$route.query.order_type === 1 ? 'ascend' : 'descend'
        }
        return item
      })
    },

    repository() {
      return {
        kol: this.$api[this.resource.kol],
        campaign: this.$api[this.resource.campaign]
      }
    }
  },

  watch: {
    /**
     * Watching changes of route
     */
    '$route.query': '$fetch'
  },

  methods: {
    /**
     * Handle table change
     *
     * @param {Object} Filters
     * @param {Object} Sorter
     */
    handleTableChange(pagination, filters, sorter) {
      const query = {
        order_by: sorter.order ? sorter.field : null,
        order_type: sorter.order ? +(sorter.order === 'ascend') : null
      }
      this.replaceQuery(query)
    },

    /**
     * Replace query
     *
     * @param {Object} Data query
     */
    replaceQuery(data) {
      const query = {}
      const newQuery = {
        ...this.$route.query,
        ...data
      }
      Object.entries(newQuery).forEach(([key, value]) => {
        if (value !== '' && value !== null && value !== undefined) {
          query[key] = JSON.stringify(value)
        }
      })
      if (JSON.stringify(query) === JSON.stringify(this.$route.query)) {
        this.$fetch()
      } else {
        this.$router.push({ query })
      }
    },

    /**
     * Go to detail
     *
     * @param {Number} id
     */
    gotoDetail(id) {
      this.$router.push(`/${this.resource}/${id}`)
    },

    /**
     * Get kol id to register in campaign
     *
     * @returns {Array} kolId Data Kol ID
     */
    getUsernameKolToRegister() {
      const kolUsernames = []
      for (const i in this.dataKolFromHypeAuditor) {
        if (this.dataKolFromHypeAuditor[i].disable !== null) {
          kolUsernames.push(this.dataKolFromHypeAuditor[i].basic.username)
        }
      }

      return kolUsernames
    }
  }
}
