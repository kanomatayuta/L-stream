<template>
  <a-form-model
    ref="form"
    :model="this"
    :rules="formRules"
    class="form__login"
    @submit.prevent="handleSubmit"
  >
    <a-spin :spinning="loading">
      <div class="container__logo">
        <div class="wrapper__logo">
          <div class="img__logo">
            <font-awesome-icon icon="user-tie" />
          </div>
        </div>

        <div class="content__login p-4">
          <h2 class="text-center mb-3">
            {{ $t('common.login') }}
          </h2>

          <a-form-model-item prop="email">
            <a-input
              v-model="email"
              type="email"
              :placeholder="$t('user.email')"
              @change="message = ''"
            >
              <font-awesome-icon
                slot="prefix"
                icon="envelope"
                style="color:rgba(0,0,0,.25)"
              />
            </a-input>
          </a-form-model-item>

          <a-form-model-item prop="password">
            <a-input
              v-model="password"
              type="password"
              :placeholder="$t('user.password')"
              @change="message = ''"
            >
              <font-awesome-icon
                slot="prefix"
                icon="lock"
                style="color:rgba(0,0,0,.25)"
              />
            </a-input>
          </a-form-model-item>

          <div
            v-if="message"
            class="ant-form-item has-error ml-3"
          >
            <span class="ant-form-explain">{{ message }}</span>
          </div>
          <!-- Forget Password -->
          <div class="forgot_password_text">
            <nuxt-link to="/forget-password">
              {{ $t('login.forget_password') }}
            </nuxt-link>
          </div>
          <div class="text-center">
            <a-button
              html-type="submit"
              type="primary"
              size="large"
            >
              {{ $t('common.login') }}
            </a-button>
          </div>
        </div>
      </div>
    </a-spin>
  </a-form-model>
</template>

<script>
import { mapState } from 'vuex'
import { ROLE_TYPE } from '~/constants'

export default {
  layout: 'guest',

  middleware: 'guest',

  data() {
    return {
      email: '',
      password: '',
      message: '',
      ROLE_TYPE
    }
  },

  computed: {
    ...mapState({
      loading: 'loading'
    }),

    formRules() {
      return {
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
            max: 200,
            message: this.$t('validation.max', { field: this.$t('user.email'), max: 200 }),
            trigger: ['change', 'blur']
          }
        ],
        password: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('user.password') }),
            trigger: ['change', 'blur']
          },
          {
            max: 32,
            message: this.$t('validation.max', { field: this.$t('user.password'), max: 32 }),
            trigger: ['change', 'blur']
          },
          {
            min: 8,
            message: this.$t('validation.min', { field: this.$t('user.password'), min: 8 }),
            trigger: ['change', 'blur']
          }
        ]
      }
    }
  },

  methods: {
    /**
     * Handle submit
     */
    handleSubmit() {
      this.$refs.form.validate(async valid => {
        if (valid) {
          this.$store.dispatch('setLoading', true)

          try {
            const credential = {
              email: this.email,
              password: this.password
            }
            await this.$auth.login({ data: credential })
            if (this.$auth.user.role_type === ROLE_TYPE[0].value) {
              this.$router.push({ name: 'user' })
            } else {
              this.$router.push({ name: 'kol-search' })
            }
          } catch (_) {
            this.message = this.$t('validation.login_fail')
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
h2 {
  font-weight: 400;
  font-size: 24px;
  color: #000000;
}
.form__login {
  /deep/ {
    width: 100%;
    max-width: 400px;
    background: #fff;
    box-shadow: 0 0 10px 1px rgba(0, 0, 0, 0.2);
    margin: 30px 0;
    font-family: BIZ UDPGothic;
    .container__logo {
      padding-bottom: 30px;
      .wrapper__logo {
        text-align: center;
        background: $primary-color;
        padding: 30px 0 80px;
      }
      .img__logo {
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 80px;
        line-height: 1;
        border-radius: 50%;
        margin: auto;
      }
    }
    .content__login {
      position: relative;
      top: -40px;
      width: 80%;
      box-shadow: 2px 5px 16px 2px rgba(16, 16, 16, 0.18);
      background: #fff;
      border-radius: 6px;
      margin: auto;
      z-index: 2;
    }
    .forgot_password_text {
    font-size: 12px;
    margin-left: 10px;
    margin-bottom: 15px;
    }
    .ant-row {
      margin :10px
    }
    ::placeholder {
      font-weight: 400;
      font-size: 12px;
      color: #BDBDBD;
    }
    .ant-btn-lg {
      font-size: 14px;
    }
  }
}
</style>
