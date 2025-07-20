<template>
  <a-form-model
    ref="form"
    :model="model"
    :rules="formRules"
    :label-col="{ sm: 6, lg: 11, xl: 7, xxl: 6 }"
    :wrapper-col="{ sm: 18, lg: 13, xl: 17, xxl: 18 }"
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
              :label="$t('user.company_name')"
              prop="company_name"
            >
              <a-input
                v-model="model.company_name"
                :placeholder="$t('user.company_name')"
              />
            </a-form-model-item>
          </a-col>

          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('user.email')"
              prop="email"
            >
              <a-input
                v-model="model.email"
                :placeholder="$t('user.email')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="envelope"
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
              :label="$t('user.website')"
              prop="website"
            >
              <a-input
                v-model="model.website"
                :placeholder="$t('user.website')"
              />
            </a-form-model-item>
          </a-col>

          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('user.phone_number')"
              prop="mobile_no"
            >
              <a-input
                v-model="model.mobile_no"
                :placeholder="$t('user.phone_number')"
                type="number"
                min="0"
              />
            </a-form-model-item>
          </a-col>

          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('user.representative')"
              prop="representative"
            >
              <a-input
                v-model="model.representative"
                :placeholder="$t('user.representative')"
              />
            </a-form-model-item>
          </a-col>

          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('user.address')"
              prop="address"
            >
              <a-input
                v-model="model.address"
                :placeholder="$t('user.address')"
              />
            </a-form-model-item>
          </a-col>

          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('user.plan')"
              prop="plan_id"
            >
              <a-select
                v-model="model.plan_id"
                :placeholder="$t('user.plan')"
                @change="checkFreeTrialPlan()"
              >
                <a-select-option
                  v-for="(item, index) in USAGE_PLAN_NAME"
                  :key="index"
                  :value="item.id"
                >
                  {{ item.value }}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>
          <a-col
            v-if="checkMadePlan()"
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
            v-if="checkMadePlan()"
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
            v-if="checkMadePlan()"
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
            v-if="checkMadePlan()"
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
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('plan.start_date')"
              prop="plan_start_date"
            >
              <a-date-picker
                v-model="model.plan_start_date"
                :format="FORMAT_DATE_SLASH"
                :placeholder="$t('plan.start_date')"
                :disabled="model.id ? true : false"
              />
            </a-form-model-item>
          </a-col>

          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              ref="pwd"
              :label="$t('user.password')"
              prop="new_password"
            >
              <a-input
                v-model="model.new_password"
                type="password"
                :placeholder="$t('user.password')"
                @blur="clearValidatePwd()"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="lock"
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
              v-if="showPaymentStatus"
              :label="$t('user.payment_status')"
              prop="payment_status"
            >
              <a-select
                v-model="model.payment_status"
                :placeholder="$t('user.payment_status')"
              >
                <a-select-option
                  v-for="(item, index) in PAYMENT_STATUS"
                  :key="index"
                  :value="item.value"
                >
                  {{ item.label }}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>

          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              ref="pwd_confirm"
              :label="$t('user.password_confirm')"
              prop="password_confirm"
            >
              <a-input
                v-model="model.password_confirm"
                type="password"
                :placeholder="$t('user.password_confirm')"
                @blur="clearValidatePwd()"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="lock"
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
import moment from 'moment-timezone'
import DataForm from '~/mixins/data-form'
import {
  FORMAT_DATE_FULL,
  FORMAT_DATE_SLASH,
  PAYMENT_STATUS,
  USAGE_PLAN_NAME,
  UPGRADE_PLAN_TYPE,
  PAYMENT_STATUS_PAID
} from '~/constants'

export default {
  mixins: [DataForm],

  data: () => ({
    resource: 'user',
    plans: [],
    moment,
    FORMAT_DATE_SLASH,
    FORMAT_DATE_FULL,
    PAYMENT_STATUS,
    USAGE_PLAN_NAME,
    UPGRADE_PLAN_TYPE,
    PAYMENT_STATUS_PAID,
    showPaymentStatus: true
  }),

  computed: {
    formRules() {
      return {
        company_name: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('user.company_name') }),
            trigger: ['change', 'blur']
          },
          {
            max: 255,
            message: this.$t('validation.campaign_max', { field: this.$t('text.company_name'), max: 255 }),
            trigger: ['change', 'blur']
          },
          {
            whitespace: true,
            message: this.$t('validation.required', { field: this.$t('user.company_name') }),
            trigger: ['change', 'blur']
          }
        ],
        email: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('user.email') }),
            trigger: ['change', 'blur']
          },
          {
            type: 'email',
            message: this.$t('validation.invalid_email'),
            trigger: ['change', 'blur']
          },
          {
            max: 50,
            message: this.$t('validation.campaign_max', { field: this.$t('text.email'), max: 50 }),
            trigger: ['change', 'blur']
          },
          {
            whitespace: true,
            message: this.$t('validation.required', { field: this.$t('user.email') }),
            trigger: ['change', 'blur']
          }
        ],
        website: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('user.website') }),
            trigger: ['change', 'blur']
          },
          {
            max: 255,
            message: this.$t('validation.campaign_max', { field: this.$t('text.website'), max: 255 }),
            trigger: ['change', 'blur']
          },
          {
            whitespace: true,
            message: this.$t('validation.required', { field: this.$t('user.website') }),
            trigger: ['change', 'blur']
          }
        ],
        mobile_no: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('user.phone_number') }),
            trigger: ['change', 'blur']
          },
          {
            max: 15,
            message: this.$t('validation.campaign_max', { field: this.$t('text.phone_number'), max: 15 }),
            trigger: ['change', 'blur']
          },
          {
            whitespace: true,
            message: this.$t('validation.required', { field: this.$t('campaign.name') }),
            trigger: ['change', 'blur']
          }
        ],
        representative: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('user.representative') }),
            trigger: ['change', 'blur']
          },
          {
            max: 50,
            message: this.$t('validation.campaign_max', { field: this.$t('text.representative'), max: 50 }),
            trigger: ['change', 'blur']
          },
          {
            whitespace: true,
            message: this.$t('validation.required', { field: this.$t('user.representative') }),
            trigger: ['change', 'blur']
          }
        ],
        plan_id: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('user.plan') }),
            trigger: ['change', 'blur']
          }
        ],
        payment_status: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('user.payment_status') }),
            trigger: ['change', 'blur']
          }
        ],
        address: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('user.address') }),
            trigger: ['change', 'blur']
          },
          {
            max: 255,
            message: this.$t('validation.campaign_max', { field: this.$t('text.address'), max: 255 }),
            trigger: ['change', 'blur']
          },
          {
            whitespace: true,
            message: this.$t('validation.required', { field: this.$t('user.address') }),
            trigger: ['change', 'blur']
          }
        ],
        plan_start_date: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('user.start_date') }),
            trigger: ['change', 'blur']
          }
        ],
        new_password: [
          {
            required: !this.id || this.model.password_confirm,
            message: this.$t('validation.required', { field: this.$t('user.password') }),
            trigger: ['change', 'blur']
          },
          {
            min: 8,
            message: this.$t('validation.min', { field: this.$t('user.password'), min: 8 }),
            trigger: ['change', 'blur']
          }
        ],
        password_confirm: [
          {
            required: !this.id || this.model.new_password,
            message: this.$t('validation.required', { field: this.$t('user.password_confirm') }),
            trigger: ['change', 'blur']
          },
          {
            min: 8,
            message: this.$t('validation.min', { field: this.$t('user.password_confirm'), min: 8 }),
            trigger: ['change', 'blur']
          },
          {
            validator: (rule, value, callback) => {
              if (!value || !this.model.new_password || value === this.model.new_password) {
                return callback()
              }

              return callback(
                new Error(
                  this.$t('validation.not_match', { field1: this.$t('user.password'), field2: this.$t('text.password_confirm') })
                )
              )
            },
            message: this.$t('validation.not_match', { field1: this.$t('user.password'), field2: this.$t('text.password_confirm') }),
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
        ]
      }
    }
  },
  updated() {
    this.checkFreeTrialPlan()
  },
  methods: {
    /**
     * Clear validate password field
     */
    clearValidatePwd() {
      if (this.id && this.model.new_password === '') {
        this.$refs.pwd.clearValidate()
        this.$refs.pwd_confirm.clearValidate()
      }
    },
    /**
     * Get model
     *
     * @returns {Object}
     */
    getModel() {
      const model = {
        name: this.model.name,
        username: this.model.username,
        company_name: this.model.company_name,
        code: Math.floor(Math.random() * 100),
        email: this.model.email,
        website: this.model.website,
        representative: this.model.representative,
        address: this.model.address,
        mobile_no: this.model.mobile_no,
        plan_id: this.model.plan_id,
        plan_start_date: moment(this.model.plan_start_date).format(FORMAT_DATE_FULL),
        role_type: 2,
        payment_status: this.showPaymentStatus ? this.model.payment_status : PAYMENT_STATUS_PAID,
        password: this.model.new_password !== '' ? this.model.new_password : undefined,
        page_search_number: this.model.page_search_number ?? 0,
        profile_view_number: this.model.profile_view_number ?? 0,
        export_csv_number: this.model.export_csv_number ?? 0,
        campaign_register_number: this.model.campaign_register_number ?? 0
      }
      return model
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
     * Check is made plan
     */
    checkMadePlan() {
      return USAGE_PLAN_NAME.find(item => item.id === this.model.plan_id) && USAGE_PLAN_NAME.find(item => item.id === this.model.plan_id).plan_type === UPGRADE_PLAN_TYPE.ORDER_MADE
    },

    /**
     * Check is Free Trial plan
     */
    checkFreeTrialPlan() {
      if (USAGE_PLAN_NAME.find(item => item.id === this.model.plan_id) && USAGE_PLAN_NAME.find(item => item.id === this.model.plan_id).plan_type === UPGRADE_PLAN_TYPE.FREE_TRIAL) {
        this.showPaymentStatus = false
      } else {
        this.showPaymentStatus = true
      }
    }
  }
}
</script>
<style lang="scss" scoped>
/deep/ {
  .ant-calendar-picker, .ant-input-number {
    width: 100%;
  }
  .ant-input-number-handler-wrap {
    display: none;
  }
}
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
}
</style>
