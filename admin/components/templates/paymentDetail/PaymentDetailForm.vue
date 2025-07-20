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
              :label="$t('paymentDetail.plan_id')"
              prop="plan_id"
            >
              <a-input
                v-model="model.plan_id"
                :placeholder="$t('paymentDetail.plan_id')"
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
              :label="$t('paymentDetail.user_id')"
              prop="user_id"
            >
              <a-input
                v-model="model.user_id"
                :placeholder="$t('paymentDetail.user_id')"
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
              :label="$t('paymentDetail.term_mode')"
              prop="term_mode"
            >
              <a-input
                v-model="model.term_mode"
                :placeholder="$t('paymentDetail.term_mode')"
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
              :label="$t('paymentDetail.money_amount')"
              prop="money_amount"
            >
              <a-input
                v-model="model.money_amount"
                :placeholder="$t('paymentDetail.money_amount')"
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
              :label="$t('paymentDetail.account_search_number')"
              prop="account_search_number"
            >
              <a-input
                v-model="model.account_search_number"
                :placeholder="$t('paymentDetail.account_search_number')"
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
              :label="$t('paymentDetail.page_search_number')"
              prop="page_search_number"
            >
              <a-input
                v-model="model.page_search_number"
                :placeholder="$t('paymentDetail.page_search_number')"
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
              :label="$t('paymentDetail.profile_view_number')"
              prop="profile_view_number"
            >
              <a-input
                v-model="model.profile_view_number"
                :placeholder="$t('paymentDetail.profile_view_number')"
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
              :label="$t('paymentDetail.full_report_number')"
              prop="full_report_number"
            >
              <a-input
                v-model="model.full_report_number"
                :placeholder="$t('paymentDetail.full_report_number')"
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
              :label="$t('paymentDetail.export_csv_number')"
              prop="export_csv_number"
            >
              <a-input
                v-model="model.export_csv_number"
                :placeholder="$t('paymentDetail.export_csv_number')"
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
              :label="$t('paymentDetail.campaign_register_number')"
              prop="campaign_register_number"
            >
              <a-input
                v-model="model.campaign_register_number"
                :placeholder="$t('paymentDetail.campaign_register_number')"
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
              :label="$t('paymentDetail.insight_list_number')"
              prop="insight_list_number"
            >
              <a-input
                v-model="model.insight_list_number"
                :placeholder="$t('paymentDetail.insight_list_number')"
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
              :label="$t('paymentDetail.campaign_list_number')"
              prop="campaign_list_number"
            >
              <a-input
                v-model="model.campaign_list_number"
                :placeholder="$t('paymentDetail.campaign_list_number')"
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
              :label="$t('paymentDetail.start_date')"
              prop="start_date"
            >
              <a-input
                v-model="model.start_date"
                :placeholder="$t('paymentDetail.start_date')"
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
              :label="$t('paymentDetail.end_date')"
              prop="end_date"
            >
              <a-input
                v-model="model.end_date"
                :placeholder="$t('paymentDetail.end_date')"
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
              :label="$t('paymentDetail.payment_status')"
              prop="payment_status"
            >
              <a-input
                v-model="model.payment_status"
                :placeholder="$t('paymentDetail.payment_status')"
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
      const { data: { result: { data } } } = await this.$api.paymentDetail.list()
      this.paymentDetails = data
    } catch (_) {
      this.$notification.error({
        message: this.$t('text.something_wrong')
      })
    } finally {
      this.$store.dispatch('setLoading', false)
    }
  },

  data: () => ({
    resource: 'paymentDetail',
    paymentDetails: []
  }),

  computed: {
    formRules() {
      return {
        plan_id: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('paymentDetail.plan_id') }),
            trigger: ['change', 'blur']
          }
        ],
        user_id: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('paymentDetail.user_id') }),
            trigger: ['change', 'blur']
          }
        ],
        term_mode: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('paymentDetail.term_mode') }),
            trigger: ['change', 'blur']
          }
        ],
        money_amount: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('paymentDetail.money_amount') }),
            trigger: ['change', 'blur']
          }
        ],
        account_search_number: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('paymentDetail.account_search_number') }),
            trigger: ['change', 'blur']
          }
        ],
        page_search_number: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('paymentDetail.page_search_number') }),
            trigger: ['change', 'blur']
          }
        ],
        profile_view_number: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('paymentDetail.profile_view_number') }),
            trigger: ['change', 'blur']
          }
        ],
        full_report_number: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('paymentDetail.full_report_number') }),
            trigger: ['change', 'blur']
          }
        ],
        export_csv_number: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('paymentDetail.export_csv_number') }),
            trigger: ['change', 'blur']
          }
        ],
        campaign_register_number: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('paymentDetail.campaign_register_number') }),
            trigger: ['change', 'blur']
          }
        ],
        insight_list_number: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('paymentDetail.insight_list_number') }),
            trigger: ['change', 'blur']
          }
        ],
        campaign_list_number: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('paymentDetail.campaign_list_number') }),
            trigger: ['change', 'blur']
          }
        ],
        start_date: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('paymentDetail.start_date') }),
            trigger: ['change', 'blur']
          }
        ],
        end_date: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('paymentDetail.end_date') }),
            trigger: ['change', 'blur']
          }
        ],
        payment_status: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('paymentDetail.payment_status') }),
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
        plan_id: this.model.plan_id,
        user_id: this.model.user_id,
        term_mode: this.model.term_mode,
        money_amount: this.model.money_amount,
        account_search_number: this.model.account_search_number,
        page_search_number: this.model.page_search_number,
        profile_view_number: this.model.profile_view_number,
        full_report_number: this.model.full_report_number,
        export_csv_number: this.model.export_csv_number,
        campaign_register_number: this.model.campaign_register_number,
        insight_list_number: this.model.insight_list_number,
        campaign_list_number: this.model.campaign_list_number,
        start_date: this.model.start_date,
        end_date: this.model.end_date,
        payment_status: this.model.payment_status
      }

      return model
    }
  }
}
</script>
