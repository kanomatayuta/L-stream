<template>
  <a-card style="width: 300px" class="card">
    <p class="set_password">
      {{ $t('forget_password.set_password') }}
    </p>
    <p class="guide">
      {{ $t('forget_password.guide_text') }}
    </p>
    <a-form-model
      ref="form"
      :model="this"
      :rules="formRules"
      class="form__login"
      @submit.prevent="handleSubmit"
    >
      <a-spin :spinning="loading">
        <a-form-model-item prop="email_confirm">
          <a-input
            v-model="email_confirm"
            :class="emailNotExitMessage ? 'custom-input-error' : ''"
            :placeholder="$t('forget_password.password_enter')"
            @change="emailNotExitMessage = ''"
          >
            <font-awesome-icon
              slot="prefix"
              icon="envelope"
              style="color:rgba(0,0,0,.25)"
            />
          </a-input>
          <div
            v-show="emailNotExitMessage"
            class="ant-form-explain custom-error"
          >
            {{ emailNotExitMessage }}
          </div>
        </a-form-model-item>
        <div class="flex__button">
          <a-button
            html-type="submit"
            class="button__back"
            @click="goBack()"
          >
            {{ $t('forget_password.back') }}
          </a-button>
          <a-button
            html-type="submit"
            type="primary"
          >
            {{ $t('forget_password.send') }}
          </a-button>
        </div>
      </a-spin>
    </a-form-model>
  </a-card>
</template>
<script>
import { mapState } from 'vuex'
export default {
  layout: 'guest',

  middleware: 'guest',

  data() {
    return {
      email: '',
      password: '',
      message: '',
      resource: 'user',
      email_confirm: '',
      emailNotExitMessage: ''
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
        email_confirm: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('user.email') }),
            trigger: ['change', 'blur']
          },
          {
            whitespace: true,
            message: this.$t('validation.required', { field: this.$t('user.email_space') }),
            trigger: ['change', 'blur']
          },
          {
            type: 'email',
            message: this.$t('validation.invalid_email'),
            trigger: ['change', 'blur'],
            pattern: /^[a-z]+$/,
            transform(value) {
              return value.trim()
            }
          },
          {
            max: 200,
            message: this.$t('validation.max', { field: this.$t('user.email'), max: 200 }),
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
            await this.repository.forgetPassword({ email: this.email_confirm })

            this.$notification.success({
              message: this.$t('email.success')
            })

            this.$emit('save')
          } catch (error) {
            if (error.response.data.errors.email[0] === 'email.not_exits') {
              this.emailNotExitMessage = this.$t('validation.email_not_exits')
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
*{
  font-family: 'BIZ UDPGothic' !important;
}
.card {
   /deep/ {
    width: 571px !important;
    height: auto;
    background: #FFFFFF;
    box-shadow: 0px 0px 10px 2px rgba(0, 0, 0, 0.25);
    p.set_password {
      font-style: normal;
      font-weight: 400;
      font-size: 26px;
      line-height: 26px;
      color: #000000;
      margin-bottom: 20px;
    }
    p.guide {
      font-family: 'BIZ UDGothic';
      font-style: normal;
      font-weight: 400;
      font-size: 14px;
      line-height: 14px;
      color: #000000;
      margin-bottom: 40px;
    }
     .flex__button{
       display: flex;
       justify-content: end;
       padding-top: 19px;
     }
     .button__back{
       margin-right: 13px;
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
