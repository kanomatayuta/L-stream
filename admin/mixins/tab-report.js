import { mapState } from 'vuex'

export default {
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
     *  Get data
     */
    async getData() {
      this.$store.dispatch('setLoading', true)

      try {
        const { data: { result: { data } } } = await this.repository.getDetails(0, this.$route.params.id)
        this.data = data
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    },

    /**
     *  Get feed data
     */
    async getFeed() {
      this.$store.dispatch('setLoading', true)

      try {
        const { data: { result: { data } } } = await this.repository.getDetails(1, this.$route.params.id)
        this.feedData = data
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    },

    /**
     *  Get story data
     */
    async getStory() {
      this.$store.dispatch('setLoading', true)

      try {
        const { data: { result: { data } } } = await this.repository.getDetails(2, this.$route.params.id)
        this.storyData = data
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    },

    /**
     *  Get reel data
     */
    async getReel() {
      this.$store.dispatch('setLoading', true)

      try {
        const { data: { result: { data } } } = await this.repository.getDetails(3, this.$route.params.id)
        this.reelData = data
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    },

    /**
     * Get Kol tab report
     */
    async getTabReport() {
      try {
        const { data: { result: { data } } } = await this.$api.campaignDetailPost.getTabReportKol(this.$route.params.id)
        this.tabReport = data
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      }
    },

    /**
     *  Submit data tab report
     */
    async submit() {
      this.$store.dispatch('setLoading', true)

      try {
        const data = this.feedData.concat(this.storyData, this.reelData)
        await this.repository.multiUpdate(this.$route.params.id, data)
        this.dataChange = false
        this.$notification.success({
          message: this.$t('text.successfully')
        })
        this.$emit('save')
        this.show = []
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    },

    /**
     *  Submit data tab report
     */
    async submitYoutube() {
      this.$store.dispatch('setLoading', true)

      try {
        const data = this.data
        await this.repository.multiUpdate(this.$route.params.id, data)
        this.dataChange = false
        this.$notification.success({
          message: this.$t('text.successfully')
        })
        this.$emit('save')
        this.show = []
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    },

    /**
     *  Delete on record
     */
    deleteRecord(record, index) {
      if (record.report_type === 1) {
        this.feedData.splice(index, 1)
      } else if (record.report_type === 2) {
        this.storyData.splice(index, 1)
      } else if (record.report_type === 3) {
        this.reelData.splice(index, 1)
      }
      this.kols.push(record.campaign_detail)
      this.dataChange = true
    }
  }
}
