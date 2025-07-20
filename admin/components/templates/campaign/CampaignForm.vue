<template>
  <a-form-model
    ref="form"
    :model="campaigns"
    :rules="formRules"
    :label-col="{ sm: 6 }"
    :wrapper-col="{ sm: 24 }"
    @submit.prevent="handleSubmit"
  >
    <a-spin :spinning="loading">
      <div class="box_shadow">
        <a-row class="input_center input__bottom">
          <a-col
            :span="24"
            :md="24"
          >
            <a-form-model-item
              prop="name"
            >
              <a-input
                v-model="campaigns.name"
                class="input__font"
                :placeholder="$t('campaign.name')"
              />
            </a-form-model-item>
          </a-col>
        </a-row>
        <a-row class="input_center input__bottom">
          <a-col
            :span="24"
            :md="24"
          >
            <a-form-model-item
              prop="social_type"
            >
              <a-select
                v-model="campaigns.social_type"
                :disabled="id ? '' : disabled"
                :placeholder="$t('campaign.sns')"
                class="input__font font__family"
              >
                <a-select-option
                  v-for="(item, index) in SNS_CAMPAIGN_FORM"
                  :key="index"
                  :value="item.value"
                >
                  {{ item.label }}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>
        </a-row>
        <a-row class="input_center">
          <a-col
            :span="24"
            :md="24"
          >
            <a-form-model-item
              prop="genre_id"
            >
              <a-select
                v-model="campaigns.genre_id"
                :placeholder="$t('campaign.genre')"
                class="input__font"
              >
                <a-select-option
                  v-for="(item, index) in genres"
                  :key="index"
                  :value="item.id"
                >
                  {{ item.name }}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>
        </a-row>
        <div class="text-center button__padding">
          <a-button
            html-type="submit"
            type="primary"
            class="min-w-100"
          >
            {{ id ? $t('common.update') : $t('common.create') }}
          </a-button>
        </div>
      </div>
    </a-spin>
  </a-form-model>
</template>

<script>
import moment from 'moment-timezone'
import { mapState } from 'vuex'
import { FORMAT_DATE_FULL, SNS_CAMPAIGN_FORM } from '~/constants'
export default {
  async fetch() {
    this.$store.dispatch('setLoading', true)

    try {
      // Call api and processing.
      const { data: { result: { data } } } = await this.repository.listGenre()
      this.genres = data
    } catch (_) {
      this.$notification.error({
        message: this.$t('text.something_wrong')
      })
    } finally {
      this.$store.dispatch('setLoading', false)
    }
  },

  props: {
    id: {
      type: [Number, String],
      default: 0
    }
  },

  data() {
    return {
      resource: 'campaign',
      moment,
      FORMAT_DATE_FULL,
      SNS_CAMPAIGN_FORM,
      genres: [],
      campaigns: {},
      disabled: false
    }
  },

  computed: {
    formRules() {
      return {
        name: [
          {
            required: true,
            message: this.$t('campaign.required', { field: this.$t('campaign.name') }),
            trigger: ['change', 'blur']
          },
          {
            max: 255,
            message: this.$t('validation.campaign_max', { field: this.$t('campaign.name'), max: 255 }),
            trigger: ['change', 'blur']
          },
          {
            whitespace: true,
            message: this.$t('campaign.required', { field: this.$t('campaign.name') }),
            trigger: ['change', 'blur']
          }
        ],
        genre_id: [
          {
            required: true,
            message: this.$t('campaign.required', { field: this.$t('campaign.genre') }),
            trigger: ['change', 'blur']
          }
        ],
        social_type: [
          {
            required: true,
            message: this.$t('campaign.required', { field: this.$t('campaign.social_type') }),
            trigger: ['change', 'blur']
          }
        ]
      }
    },
    ...mapState({
      loading: 'loading'
    }),

    repository() {
      return this.$api[this.resource]
    }
  },

  watch: {
    id(val) {
      this.getDetail(val)
    }
  },
  mounted() {
    if (this.id !== 0) {
      this.getDetail(this.id)
    }
  },

  methods: {
    /**
     * Get model
     *
     * @returns {Object}
     */
    getModel() {
      const campaigns = {
        name: this.campaigns.name,
        genre_id: this.campaigns.genre_id,
        start_date: moment(this.campaigns.start_date).format('YYYY-MM-DD'),
        social_type: this.campaigns.social_type,
        is_active: 1,
        campaign_mode: 1
      }

      return campaigns
    },

    /**
     * Set model
     *
     * @param {Object} data
     */
    setModel(data) {
      this.model = data
    },
    async getDetail() {
      this.$store.dispatch('setLoading', true)
      try {
        // Call api and processing.
        const { data: { result: { data } } } = await this.repository.showCampaign(this.id)
        this.campaigns = data
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
            if (this.campaigns.id) {
              await this.repository.update(this.campaigns.id, data)
            } else {
              await this.repository.create(data)
            }

            this.$notification.success({
              message: this.$t('text.successfully')
            })

            this.$emit('save')
          } catch (_) {
            this.$notification.error({
              message: this.$t('text.campaign_not_exits')
            })
          } finally {
            this.$store.dispatch('setLoading', false)
          }
        }
      })
    }
  }
}
</script>
<style lang="scss" scoped>
  /deep/{
    .ant-form-explain{
      padding-top: 8px;
    }
    .button__padding{
      padding-top: 2px;
    }
    button{
      font-family: 'BIZ UDGothic';
      font-style: normal;
      font-weight: 400;
      font-size: 16px;
      line-height: 23px;
      width: 86px;
      height: 33px;
      border-radius: 0;
    }
    ::placeholder{
      color: #888888;
    }
    .ant-select-selection--single, .input__font{
      width: 100%;
      height: 61px;
      border-radius: 3px;
      font-family: 'BIZ UDGothic';
      font-style: normal;
      font-weight: 400;
      font-size: 20px;
      color: #000;
    }
    .font__family.input__font{
      .ant-select-selection__placeholder, .ant-select-search__field__placeholder{
        font-family: 'Open Sans';
      }
    }
    .ant-select-selection__rendered, .ant-select-selection-selected-value{
      line-height: 61px;
    }
    .ant-select-selection__placeholder, .ant-select-search__field__placeholder{
      color: #888888;
      font-family: 'BIZ UDGothic';
    }
    .box_shadow{
      width: 50%;
      margin: 100px auto;
      box-shadow: 0px 0px 10px 2px rgba(0, 0, 0, 0.25);
      padding: 106px 112px 106px 99px;
      border-radius: 5px;
      .input__bottom :nth-child(2) {
        font-family: 'Open Sans';
      }
    }
    .input_center{
      display: flex;
      justify-content: center;
      margin-bottom: 8px;
    }
    .input_center.input__bottom{
      margin-bottom: 16px;
    }
  }
  @media (min-width: 576px) and (max-width: 991.98px) {
    .box_shadow{
      width: 90%;
    }
  }
  @media (min-width: 992px) and (max-width: 1607.98px) {
    .box_shadow{
      width: 70%;
    }
  }
</style>
