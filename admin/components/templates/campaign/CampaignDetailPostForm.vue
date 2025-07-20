<template>
  <a-form-model
    ref="form"
    :model="model"
    :rules="formRules"
    :label-col="{ sm: 6 }"
    :wrapper-col="{ sm: 18 }"
    @submit.prevent="handleSubmit"
  >
    <a-spin :spinning="loading">
      <div class="p-4">
        <a-row
          type="flex"
          :gutter="30"
        >
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.campaign_id')"
              prop="campaign_id"
            >
              <a-input
                v-model="model.campaign_id"
                :placeholder="$t('campaignDetailPost.campaign_id')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.kol_id')"
              prop="kol_id"
            >
              <a-input
                v-model="model.kol_id"
                :placeholder="$t('campaignDetailPost.kol_id')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.campaign_detail_id')"
              prop="campaign_detail_id"
            >
              <a-input
                v-model="model.campaign_detail_id"
                :placeholder="$t('campaignDetailPost.campaign_detail_id')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.post_date')"
              prop="post_date"
            >
              <a-input
                v-model="model.post_date"
                :placeholder="$t('campaignDetailPost.post_date')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.post_url')"
              prop="post_url"
            >
              <a-input
                v-model="model.post_url"
                :placeholder="$t('campaignDetailPost.post_url')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.product_name')"
              prop="product_name"
            >
              <a-input
                v-model="model.product_name"
                :placeholder="$t('campaignDetailPost.product_name')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.amount_money')"
              prop="amount_money"
            >
              <a-input
                v-model="model.amount_money"
                :placeholder="$t('campaignDetailPost.amount_money')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.number_registration')"
              prop="number_registration"
            >
              <a-input
                v-model="model.number_registration"
                :placeholder="$t('campaignDetailPost.number_registration')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.regeneration_avg')"
              prop="regeneration_avg"
            >
              <a-input
                v-model="model.regeneration_avg"
                :placeholder="$t('campaignDetailPost.regeneration_avg')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.regeneration_pr')"
              prop="regeneration_pr"
            >
              <a-input
                v-model="model.regeneration_pr"
                :placeholder="$t('campaignDetailPost.regeneration_pr')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.good_count')"
              prop="good_count"
            >
              <a-input
                v-model="model.good_count"
                :placeholder="$t('campaignDetailPost.good_count')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.comment_count')"
              prop="comment_count"
            >
              <a-input
                v-model="model.comment_count"
                :placeholder="$t('campaignDetailPost.comment_count')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.normal_eg_rate')"
              prop="normal_eg_rate"
            >
              <a-input
                v-model="model.normal_eg_rate"
                :placeholder="$t('campaignDetailPost.normal_eg_rate')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.preg_rate')"
              prop="preg_rate"
            >
              <a-input
                v-model="model.preg_rate"
                :placeholder="$t('campaignDetailPost.preg_rate')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.share_count')"
              prop="share_count"
            >
              <a-input
                v-model="model.share_count"
                :placeholder="$t('campaignDetailPost.share_count')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.share_rate')"
              prop="share_rate"
            >
              <a-input
                v-model="model.share_rate"
                :placeholder="$t('campaignDetailPost.share_rate')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.earning')"
              prop="earning"
            >
              <a-input
                v-model="model.earning"
                :placeholder="$t('campaignDetailPost.earning')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('campaignDetailPost.roas')"
              prop="roas"
            >
              <a-input
                v-model="model.roas"
                :placeholder="$t('campaignDetailPost.roas')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
        </a-row>
      </div>
      <div class="text-center p-3">
        <a-button
          html-type="submit"
          type="primary"
          class="min-w-100"
        >
          {{ id ? $t('common.update') : $t('common.create') }}
        </a-button>

        &nbsp;
        <a-button
          html-type="button"
          type="default"
          class="min-w-100"
          @click="$emit('cancel')"
        >
          {{ $t('common.cancel') }}
        </a-button>
      </div>
    </a-spin>
  </a-form-model>
</template>

<script>
import DataForm from '~/mixins/data-form'

export default {
  mixins: [DataForm],

  async fetch() {
    this.$store.dispatch('setLoading', true)

    try {
      // Call api and processing.
      const { data: { result: { data } } } = await this.$api.campaignDetailPost.list()
      this.campaignDetails = data
    } catch (_) {
      this.$notification.error({
        message: this.$t('text.something_wrong')
      })
    } finally {
      this.$store.dispatch('setLoading', false)
    }
  },

  data: () => ({
    resource: 'campaignDetailPost',
    campaignDetails: []
  }),

  computed: {
    formRules() {
      return {
        campaign_id: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.campaign_id') }),
            trigger: ['change', 'blur']
          }
        ],
        kol_id: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.kol_id') }),
            trigger: ['change', 'blur']
          }
        ],
        campaign_detail_id: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.campaign_detail_id') }),
            trigger: ['change', 'blur']
          }
        ],
        post_date: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.post_date') }),
            trigger: ['change', 'blur']
          }
        ],
        post_url: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.post_url') }),
            trigger: ['change', 'blur']
          }
        ],
        product_name: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.product_name') }),
            trigger: ['change', 'blur']
          }
        ],
        amount_money: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.amount_money') }),
            trigger: ['change', 'blur']
          }
        ],
        number_registration: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.number_registration') }),
            trigger: ['change', 'blur']
          }
        ],
        regeneration_avg: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.regeneration_avg') }),
            trigger: ['change', 'blur']
          }
        ],
        regeneration_pr: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.regeneration_pr') }),
            trigger: ['change', 'blur']
          }
        ],
        good_count: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.good_count') }),
            trigger: ['change', 'blur']
          }
        ],
        comment_count: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.comment_count') }),
            trigger: ['change', 'blur']
          }
        ],
        normal_eg_rate: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.normal_eg_rate') }),
            trigger: ['change', 'blur']
          }
        ],
        preg_rate: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.preg_rate') }),
            trigger: ['change', 'blur']
          }
        ],
        share_count: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.share_count') }),
            trigger: ['change', 'blur']
          }
        ],
        share_rate: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.share_rate') }),
            trigger: ['change', 'blur']
          }
        ],
        earning: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.earning') }),
            trigger: ['change', 'blur']
          }
        ],
        roas: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('campaignDetailPost.roas') }),
            trigger: ['change', 'blur']
          }
        ]
      }
    }
  },

  methods: {
    /**
     * Get model
     *
     * @returns  {Object}
     */
    getModel() {
      const model = {
        campaign_id: this.model.campaign_id,
        kol_id: this.model.kol_id,
        campaign_detail_id: this.model.campaign_detail_id,
        post_date: this.model.post_date,
        post_url: this.model.post_url,
        product_name: this.model.product_name,
        amount_money: this.model.amount_money,
        number_registration: this.model.number_registration,
        regeneration_avg: this.model.regeneration_avg,
        regeneration_pr: this.model.regeneration_pr,
        good_count: this.model.good_count,
        comment_count: this.model.comment_count,
        normal_eg_rate: this.model.normal_eg_rate,
        preg_rate: this.model.preg_rate,
        share_count: this.model.share_count,
        share_rate: this.model.share_rate,
        earning: this.model.earning,
        roas: this.model.roas
      }

      return model
    }
  }
}
</script>
