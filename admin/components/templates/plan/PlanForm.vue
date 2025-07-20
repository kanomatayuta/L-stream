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
<!--          <a-col-->
<!--            :span="24"-->
<!--            :md="12"-->
<!--          >-->
<!--            <a-form-model-item-->
<!--              :label="$t('plan.name')"-->
<!--              prop="name"-->
<!--            >-->
<!--              <a-input-->
<!--                v-model="model.name"-->
<!--                :placeholder="$t('plan.name')"-->
<!--              >-->
<!--                <font-awesome-icon-->
<!--                  slot="prefix"-->
<!--                  icon="heading"-->
<!--                  style="color:rgba(0,0,0,.25)"-->
<!--                />-->
<!--              </a-input>-->
<!--            </a-form-model-item>-->
<!--          </a-col>-->
<!--          <a-col-->
<!--            :span="24"-->
<!--            :md="12"-->
<!--          >-->
<!--            <a-form-model-item-->
<!--              :label="$t('plan.plan_type')"-->
<!--              prop="plan_type"-->
<!--            >-->
<!--              <a-select-->
<!--                v-model="model.plan_type"-->
<!--                :placeholder="$t('plan.plan_type')"-->
<!--                allow-clear-->
<!--              >-->
<!--                <a-select-option-->
<!--                  v-for="(item, index) in PLAN_TYPE"-->
<!--                  :key="index"-->
<!--                  :value="item.value"-->
<!--                >-->
<!--                  {{ item.label }}-->
<!--                </a-select-option>-->
<!--              </a-select>-->
<!--            </a-form-model-item>-->
<!--          </a-col>-->
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('plan.short_term_money_amount')"
              prop="short_term_money_amount"
            >
              <a-input-number
                v-model="model.short_term_money_amount"
                :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                :min="0"
                :placeholder="$t('plan.short_term_money_amount')"
              />
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('plan.page_search_number')"
              prop="page_search_number"
            >
              <a-input-number
                v-model="model.page_search_number"
                :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                :min="0"
                :placeholder="$t('plan.page_search_number')"
              />
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('plan.profile_view_number')"
              prop="profile_view_number"
            >
              <a-input-number
                v-model="model.profile_view_number"
                :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                :min="0"
                :placeholder="$t('plan.profile_view_number')"
              />
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('plan.export_csv_number')"
              prop="export_csv_number"
            >
              <a-input-number
                v-model="model.export_csv_number"
                :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                :min="0"
                :placeholder="$t('plan.export_csv_number')"
              />
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('plan.campaign_register_number')"
              prop="campaign_register_number"
            >
              <a-input-number
                v-model="model.campaign_register_number"
                :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                :min="0"
                :placeholder="$t('plan.campaign_register_number')"
              />
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
import moment from 'moment-timezone'
import DataForm from '~/mixins/data-form'
import { PLAN_TYPE, PLAN_STATUS } from '~/constants'

export default {
  mixins: [DataForm],

  async fetch() {
    this.$store.dispatch('setLoading', true)

    try {
      // Call api and processing.
      const { data: { result: { data } } } = await this.$api.plan.list()
      this.plans = data
    } catch (_) {
      this.$notification.error({
        message: this.$t('text.something_wrong')
      })
    } finally {
      this.$store.dispatch('setLoading', false)
    }
  },

  data: () => ({
    resource: 'plan',
    PLAN_TYPE,
    PLAN_STATUS,
    moment,
    plans: []
  }),

  computed: {
    formRules() {
      return {
        name: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('plan.name') }),
            trigger: ['change', 'blur']
          }
        ],
        plan_type: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('plan.plan_type') }),
            trigger: ['change', 'blur']
          }
        ],
        short_term_money_amount: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('plan.short_term_money_amount') }),
            trigger: ['change', 'blur']
          }
        ],
        long_term_money_amount: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('plan.long_term_money_amount') }),
            trigger: ['change', 'blur']
          }
        ],
        account_search_number: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('plan.account_search_number') }),
            trigger: ['change', 'blur']
          }
        ],
        page_search_number: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('plan.page_search_number') }),
            trigger: ['change', 'blur']
          }
        ],
        profile_view_number: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('plan.profile_view_number') }),
            trigger: ['change', 'blur']
          }
        ],
        full_report_number: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('plan.full_report_number') }),
            trigger: ['change', 'blur']
          }
        ],
        export_csv_number: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('plan.export_csv_number') }),
            trigger: ['change', 'blur']
          }
        ],
        campaign_register_number: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('plan.campaign_register_number') }),
            trigger: ['change', 'blur']
          }
        ],
        insight_list_number: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('plan.insight_list_number') }),
            trigger: ['change', 'blur']
          }
        ],
        campaign_list_number: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('plan.campaign_list_number') }),
            trigger: ['change', 'blur']
          }
        ],
        start_date: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('plan.start_date') }),
            trigger: ['change', 'blur']
          }
        ],
        end_date: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('plan.end_date') }),
            trigger: ['change', 'blur']
          }
        ],
        status: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('plan.status') }),
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
        name: this.model.name,
        plan_type: this.model.plan_type,
        short_term_money_amount: this.model.short_term_money_amount,
        page_search_number: this.model.page_search_number,
        profile_view_number: this.model.profile_view_number,
        export_csv_number: this.model.export_csv_number,
        campaign_register_number: this.model.campaign_register_number,
        status: 1
      }

      return model
    }
  }
}
</script>

<style lang="scss" scoped>
/deep/ {
  .ant-calendar-picker,
  .ant-input-number{
    width: 100%;
  }
}

</style>
