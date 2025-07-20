<template>
  <div>
    <a-modal
      v-model="changePassword"
      :keyboard="false"
      centered
      width="35%"
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
        @submit.prevent="handleSubmit"
      >
        <div class="modal_change_pass">
          <a-row class="company_name">
            <a-col :span="10">
              <div>{{ $t('user.password') }}</div>
            </a-col>
            <a-col :span="14">
              <a-form-model-item prop="password">
                <a-input
                  v-model="data.password"
                  type="password"
                  :placeholder="$t('user.password')"
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

          <a-row>
            <a-col :span="10">
              <div>{{ $t('user.re_enter_password') }}</div>
            </a-col>
            <a-col :span="14">
              <a-form-model-item prop="password_confirmation">
                <a-input
                  v-model="data.password_confirmation"
                  type="password"
                  :placeholder="$t('user.re_enter_password')"
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
        <div class="modal-button">
          <div>
            <a-button
              html-type="submit"
              type="primary"
              class="save min-w-100"
            >
              {{ $t('common.confirm') }}
            </a-button>

            <a-button
              html-type="button"
              type="default"
              class="min-w-100"
              @click="closeChange()"
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
        password: '',
        password_confirmation: ''
      },
      changePassword: false
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
            required: true,
            message: this.$t('validation.required', { field: this.$t('user.password') }),
            trigger: ['change', 'blur']
          },
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
        password_confirmation: [
          {
            required: true,
            message: this.$t('validation.required_pwd_comfirmation', { field: this.$t('user.password') }),
            trigger: ['change', 'blur']
          },
          {
            min: 8,
            message: this.$t('validation.pwd_confirmation_min', { field: this.$t('user.password'), min: 8 }),
            trigger: ['change', 'blur']
          },
          {
            max: 32,
            message: this.$t('validation.max', { field: this.$t('user.password'), max: 32 }),
            trigger: ['change', 'blur']
          },
          {
            validator: (rule, value, callback) => {
              if (!value || !this.data.password || value === this.data.password) {
                return callback()
              }

              return callback(
                new Error(
                  this.$t('validation.not_match', { field1: this.$t('user.password'), field2: this.$t('user.password_confirm') })
                )
              )
            },
            message: this.$t('validation.not_match', { field1: this.$t('user.password'), field2: this.$t('user.password_confirm') }),
            trigger: ['change', 'blur']
          }
        ]
      }
    }
  },

  methods: {
    /**
     * Validate before submit
     */
    handleSubmit() {
      this.$refs.form.validate(async valid => {
        if (valid) {
          this.$store.dispatch('setLoading', true)

          try {
            await this.repository.resetPassword(this.data)

            this.$notification.success({
              message: this.$t('text.change_pwd_successfully')
            })

            this.$emit('save')
          } catch (_) {
            this.$notification.error({
              message: this.$t('text.password_not_match')
            })
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
      this.changePassword = true
    },

    onClose() {
      this.$refs.form.clearValidate()
      this.data.password = ''
      this.data.password_confirmation = ''
      this.changePassword = false
    },
    /**
     *  Open modal if user dont save data
     */
    closeChange() {
      this.onClose()
    }
  }
}
</script>

<style lang="scss" scoped>
  .ant-col-10{
    padding-left: 43px;
  }
  .ant-col-14{
    padding-right: 61px;
  }
  .company_name{
    padding-top: 64px;
    .ant-row {
      margin-bottom: 0;
    }
  }
  .modal-button {
    display: flex;
    justify-content: center;
    padding-top: 5px;
    padding-bottom: 76.44px;
  }
  .ant-input-affix-wrapper{
    height: 31px;
  }
  .save{
    margin-right: 33px;
  }
  .modal_change_pass{
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 20px;
  line-height: 40px;
  /* identical to box height */
  color: #000000;
  }
  @media (min-width: 1366px) and (max-width: 1535.98px) {
    .modal_change_pass{
      font-size: 18px;
    }
  }
</style>
