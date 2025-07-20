<template>
  <a-card style="width: 300px" class="card">
    <p class="set_password">
      {{ $t('forget_password.reset_password') }}
    </p>

    <a-form-model
      ref="form"
      :model="this"
      :rules="formRules"
      class="form__login"
      @submit.prevent="handleSubmit"
    >
      <a-spin :spinning="loading">
        <a-form-model-item prop="password">
          <a-input
            v-model="password"
            type="password"
            :placeholder="$t('forget_password.new_password')"
          >
            <font-awesome-icon
              slot="prefix"
              icon="lock"
              style="color:rgba(0,0,0,.25)"
            />
          </a-input>
        </a-form-model-item>
        <a-form-model-item prop="password_confirmation">
          <a-input
            v-model="password_confirmation"
            type="password"
            :placeholder="$t('forget_password.new_password_confirm')"
          >
            <font-awesome-icon
              slot="prefix"
              icon="lock"
              style="color:rgba(0,0,0,.25)"
            />
          </a-input>
        </a-form-model-item>
        <div class="text-left">
          <a-button
            type="primary"
            ghost
            @click="goBack"
          >
            {{ $t('reset_password.back') }}
          </a-button>
          &#8201;
          <a-button
            html-type="submit"
            type="primary"
          >
            {{ $t('reset_password.send') }}
          </a-button>
        </div>
      </a-spin>
    </a-form-model>
  </a-card>
</template>
<script>
import { mapState } from 'vuex'
import { get } from 'lodash'

export default {
  layout: 'guest',

  middleware: 'guest',

  data() {
    return {
      password: '',
      password_confirmation: '',
      resource: 'user'
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
            message: this.$t('validation.required', { field: this.$t('forget_password.new_password') }),
            trigger: ['change', 'blur']
          },
          {
            max: 32,
            message: this.$t('validation.max', { field: this.$t('forget_password.new_password'), max: 32 }),
            trigger: ['change', 'blur']
          },
          {
            min: 8,
            message: this.$t('validation.min', { field: this.$t('forget_password.new_password'), min: 8 }),
            trigger: ['change', 'blur']
          }
        ],
        password_confirmation: [
          {
            validator: (rule, value, callback) => {
              if (!value && !this.isLoggedIn) {
                callback(new Error(this.$t('validation.required', { field: this.$t('forget_password.new_password_confirm') })))
              } else if (value !== this.password) {
                callback(new Error(this.$t('validation.not_match', { field1: this.$t('forget_password.new_password_confirm'), field2: this.$t('forget_password.new_password') })))
              } else {
                callback()
              }
            },
            trigger: ['change', 'blur']
          }
        ]
      }
    }
  },
  methods: {
    /**
       * Go to list
       */
    goBack() {
      this.$router.push({
        path: '../',
        append: true
      })
    },
    handleSubmit() {
      this.$refs.form.validate(async valid => {
        if (valid) {
          this.$store.dispatch('setLoading', true)

          try {
            await this.repository.updatePassword({
              token: get(this, '$route.query.token', []),
              old_password: this.password,
              new_password: this.password_confirmation
            })
            this.$notification.success({
              message: this.$t('text.successfully')
            })
            this.$router.push({ path: '/login' })

            this.$emit('save')
          } catch (error) {
            if (error.response.data.message === 'token_invalid') {
              this.$notification.error({
                message: this.$t('token_invalid')
              })
            } else if (error.response.data.message === 'token_expired') {
              this.$notification.error({
                message: this.$t('token_expired')
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
    }
  }
}
</script>
  <style lang="scss" scoped>
  .card {
     /deep/ {
      width: 571px !important;
      height: auto;
      background: #FFFFFF;
      box-shadow: 0px 0px 10px 2px rgba(0, 0, 0, 0.25);
      p.set_password {
          width: 300px;
          height: 26px;
          left: 464px;
          top: 402px;

          font-style: normal;
          font-weight: 400;
          font-size: 26px;

          color: #000000;
      }
      p.guide {
          width: 571px;
          margin-bottom: 30px;
      }
     }
    .ant-form-explain.custom-error {
      position: absolute;
      color: #f5222d;
    }
    input.ant-input.custom-input-error {
      border: 1px solid #f5222d;
    }
  }

  </style>
