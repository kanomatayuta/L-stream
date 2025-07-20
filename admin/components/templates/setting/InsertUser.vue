<template>
  <div>
    <a-modal
      v-model="visible"
      :keyboard="false"
      centered
      width="50%"
      :mask-closable="false"
      :closable="false"
      :footer="null"
      :body-style="{height: 'auto', overflow: 'auto'}"
      @close="onClose"
    >
      <a-form-model
        ref="form"
        :model="data"
        :rules="formRules"
        class="form__info"
        @submit.prevent="handleSubmit"
      >
        <div class="modal_upgrade">
          <a-row class="company_name">
            <a-col :span="10">
              <div>{{ $t('user.company_name') }}</div>
            </a-col>
            <a-col :span="14">
              <a-form-model-item prop="company_name">
                <a-input
                  v-model="data.company_name"
                />
              </a-form-model-item>
            </a-col>
          </a-row>

          <a-row class="fields">
            <a-col :span="10">
              <div>{{ $t('user.website_tab_info') }}</div>
            </a-col>
            <a-col :span="14">
              <a-form-model-item prop="website">
                <a-input
                  v-model="data.website"
                />
              </a-form-model-item>
            </a-col>
          </a-row>

          <a-row class="fields">
            <a-col :span="10">
              <div>{{ $t('user.representative') }}</div>
            </a-col>
            <a-col :span="14">
              <a-form-model-item prop="representative">
                <a-input
                  v-model="data.representative"
                />
              </a-form-model-item>
            </a-col>
          </a-row>

          <a-row class="fields">
            <a-col :span="10">
              <div>{{ $t('user.phone_number') }}</div>
            </a-col>
            <a-col :span="14">
              <a-form-model-item prop="mobile_no">
                <a-input
                  v-model="data.mobile_no"
                  type="number"
                  min="0"
                />
              </a-form-model-item>
            </a-col>
          </a-row>

          <a-row class="fields">
            <a-col :span="10">
              <div>{{ $t('user.user_email') }}</div>
            </a-col>
            <a-col :span="14">
              <a-form-model-item prop="email">
                <a-input
                  v-model="data.email"
                />
              </a-form-model-item>
            </a-col>
          </a-row>

          <a-row class="fields">
            <a-col :span="10">
              <div>{{ $t('user.password') }}</div>
            </a-col>
            <a-col :span="14">
              <a-form-model-item prop="password">
                <a-input
                  v-model="data.password"
                  type="password"
                />
              </a-form-model-item>
            </a-col>
          </a-row>

          <a-row class="upgrade_bot">
            <a-col :span="10">
              <div>{{ $t('user.address') }}</div>
            </a-col>
            <a-col :span="14">
              <a-form-model-item prop="address">
                <a-input
                  v-model="data.address"
                />
              </a-form-model-item>
            </a-col>
          </a-row>
        </div>
        <div class="modal-button">
          <div>
            <a-button
              html-type="submit"
              type="primary"
              class="save min-w-100"
            >
              {{ $t('common.save') }}
            </a-button>

            <a-button
              html-type="button"
              type="default"
              class="min-w-100"
              @click="closeInsert()"
            >
              <div class="cancel-butt">
                {{ $t('common.cancel') }}
              </div>
            </a-button>
          </div>
        </div>
      </a-form-model>
    </a-modal>
  </div>
</template>

<script>
import { mapState } from 'vuex'
export default {
  components: {
  },

  data() {
    return {
      resource: 'user',
      data: {
        email: '',
        address: '',
        password: '',
        website: '',
        representative: '',
        mobile_no: '',
        company_name: ''
      },
      visible: false
    }
  },

  computed: {
    ...mapState({
      loading: 'loading'
    }),
    repository() {
      return this.$api[this.resource]
    },
    formRules() {
      return {
        password: [
          {
            min: 8,
            message: this.$t('validation.min', { field: this.$t('user.password'), min: 8 }),
            trigger: ['change', 'blur']
          },
          {
            max: 32,
            message: this.$t('validation.max', { field: this.$t('user.password'), max: 32 }),
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
            whitespace: true,
            message: this.$t('validation.required', { field: this.$t('user.address') }),
            trigger: ['change', 'blur']
          },
          {
            max: 255,
            message: this.$t('validation.max', { field: this.$t('user.address'), max: 255 }),
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
            message: this.$t('validation.max', { field: this.$t('user.email'), max: 50 }),
            trigger: ['change', 'blur']
          }
        ],
        website: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('user.website_tab_info') }),
            trigger: ['change', 'blur']
          },
          {
            whitespace: true,
            message: this.$t('validation.required', { field: this.$t('user.website_tab_info') }),
            trigger: ['change', 'blur']
          },
          {
            max: 255,
            message: this.$t('validation.max', { field: this.$t('user.website_tab_info'), max: 255 }),
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
            whitespace: true,
            message: this.$t('validation.required', { field: this.$t('user.phone_number') }),
            trigger: ['change', 'blur']
          },
          {
            max: 15,
            message: this.$t('validation.max', { field: this.$t('user.phone_number'), max: 15 }),
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
            whitespace: true,
            message: this.$t('validation.required', { field: this.$t('user.representative') }),
            trigger: ['change', 'blur']
          },
          {
            max: 50,
            message: this.$t('validation.max', { field: this.$t('user.representative'), max: 50 }),
            trigger: ['change', 'blur']
          }
        ],
        company_name: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('user.company_name') }),
            trigger: ['change', 'blur']
          },
          {
            whitespace: true,
            message: this.$t('validation.required', { field: this.$t('user.company_name') }),
            trigger: ['change', 'blur']
          },
          {
            max: 255,
            message: this.$t('validation.max', { field: this.$t('user.company_name'), max: 255 }),
            trigger: ['change', 'blur']
          }
        ]
      }
    }
  },
  props: {
    user: {
      type: Object,
      default: () => {}
    }
  },
  methods: {
    /**
     * Update user info
     */
    handleSubmit() {
      this.$refs.form.validate(async valid => {
        if (valid) {
          this.$store.dispatch('setLoading', true)

          try {
            const data = {
              email: this.data.email,
              address: this.data.address,
              password: this.data.password,
              website: this.data.website,
              representative: this.data.representative,
              mobile_no: this.data.mobile_no,
              company_name: this.data.company_name
            }
            if (!data.password) {
              delete data.password
            }
            await this.repository.updateUserInfo(data)

            this.$notification.success({
              message: this.$t('text.successfully')
            })

            this.$emit('update-user')
            this.$emit('save')
          } catch (e) {
            if (e.response.data.errors.email) {
              this.$notification.error({
                message: this.$t('validation.email_has_taken')
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
       * Open dialog
       */
    open() {
      this.data.email = this.user.email
      this.data.address = this.user.address
      this.data.website = this.user.website
      this.data.representative = this.user.representative
      this.data.mobile_no = this.user.mobile_no
      this.data.company_name = this.user.company_name
      this.visible = true
    },

    onClose() {
      this.$refs.form.clearValidate()
      this.data.password = ''
      this.visible = false
    },
    /**
     *  Open modal if user dont save data
     */
    closeInsert() {
      this.onClose()
    }
  }
}
</script>

<style lang="scss" scoped>
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}
input[type=number] {
  -moz-appearance: textfield;
}
.ant-col-10{
  padding-left: 80px;
}
.ant-col-14{
  padding-right: 80px;
}
.company_name{
  padding-top: 64px;
  .ant-row {
      margin-bottom: 0;
    }
}
.fields {
  .ant-row {
      margin-bottom: 0;
  }
}
.modal-button {
  display: flex;
  justify-content: center;
  padding-bottom: 106.44px;
  padding-top: 15px;
}
.save{
  margin-right: 33px;
}
.modal_upgrade{
font-family: 'BIZ UDGothic';
font-style: normal;
font-weight: 400;
font-size: 20px;
line-height: 40px;
/* identical to box height */
color: #000000;
  .ant-input{
    color:#000000;
    font-weight: 400;
    font-size: 20px;
    font-family: 'Open Sans';
  }
}

</style>
