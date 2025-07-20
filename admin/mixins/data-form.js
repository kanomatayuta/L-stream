/*
 * Copyright 2020 Digi Dinos JSC. All rights reserved.
 * Email: tech@digidinos.com.
 */

import { mapState } from 'vuex'
import { REMOVE_KOL_FROM_CAMPAIGN_FAILED, RESPONSE_CODE_FORBIDDEN } from '~/constants'

export default {
  props: {
    id: {
      type: [Number, String],
      default: 0
    }
  },

  mounted() {
    this.getDetail(this.id)
  },

  watch: {
    id(val) {
      this.getDetail(val)
    }
  },

  data() {
    return {
      model: {},
      REMOVE_KOL_FROM_CAMPAIGN_FAILED
    }
  },

  computed: {
    ...mapState({
      loading: 'loading'
    }),

    repository() {
      return this.$api[this.resource]
    }
  },

  methods: {
    /**
     * Get model
     *
     * @returns {Object}
     */
    getModel() {
      return this.model
    },

    /**
     * Set model
     *
     * @param {Object} data
     */
    setModel(data) {
      this.model = data
    },

    /**
     * Get item detail
     *
     * @param {Number} id
     */
    async getDetail(id) {
      this.$store.dispatch('setLoading', true)

      try {
        if (this.$refs.form) {
          this.$refs.form.clearValidate()
        }
        let model = {}
        if (id) {
          const { data: { result: { data } } } = await this.repository.show(id)
          model = data
        }
        this.setModel(model)
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    },

    /**
     * Validate before submit
     */
    handleSubmit() {
      this.$refs.form.validate(async valid => {
        if (valid) {
          this.$store.dispatch('setLoading', true)

          try {
            const data = this.getModel()
            if (this.model.id) {
              await this.repository.update(this.model.id, data)
              this.$notification.success({
                message: this.$t('text.successfully')
              })
            } else {
              await this.repository.create(data)
              this.$notification.success({
                message: this.$t('text.create_successfully')
              })
            }

            this.$emit('save')
          } catch (error) {
            const errors = error.response.data.errors
            if (errors.email) {
              this.$notification.error({
                message: this.$t('text.email_been_taken')
              })
            }
            if (errors.short_term_money_amount || errors.page_search_number || errors.profile_view_number || errors.export_csv_number || errors.campaign_register_number) {
              this.$notification.error({
                message: this.$t('text.integer')
              })
            } else {
              this.$notification.error({
                message: this.$t('text.something_wrong')
              })
            }
          } finally {
            this.$store.dispatch('setLoading', false)
          }
        }
      })
    },

    /**
     * Register 15 Kols to Campaigns
     *
     * @param {Object} data Data Kol Id, Campaign Id, Checked value
     */
    async handleRegisterKols(data) {
      this.$store.dispatch('setLoading', true)

      try {
        const formData = new FormData()
        formData.append('campaign_id', data.campaignId)
        formData.append('social_type', data.socialType)
        for (const index in data.kolUsernames) {
          formData.append('kol_usernames[]', data.kolUsernames[index])
        }

        if (data.checked) {
          await this.repository.registerKolsInCampaigns(formData)
          this.$notification.success({
            message: this.$t('kol.register_kol_to_campaign_successfully')
          })
        } else {
          const res = await this.repository.removeKolsFromCampaign(formData)
          if (res.data.result.data) {
            this.$notification.success({
              message: data.campaignName + '' + this.$t('kol.remove_kol_from_campaign_successfully')
            })
          }
        }
      } catch (_) {
        // eslint-disable-next-line no-prototype-builtins
        if (_.hasOwnProperty('response') && _.response.status === RESPONSE_CODE_FORBIDDEN) {
          this.$notification.error({
            message: this.$t(_.response.data.message_code)
          })
        } else if (_.response.data.message === REMOVE_KOL_FROM_CAMPAIGN_FAILED) {
          this.$notification.error({
            message: this.$t('kol.remove_kol_from_campaign_failed')
          })
        } else {
          this.$notification.error({
            message: this.$t('text.something_wrong')
          })
        }
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    }
  }
}
