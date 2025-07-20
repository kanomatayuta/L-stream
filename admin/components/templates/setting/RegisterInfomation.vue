<template>
  <div class="box__shadow">
    <div class="ml-4 pt-4">
      <span class="tab_title">{{ $t('setting.registration_information') }}</span>
    </div>
    <div class="button_upgrade_form">
      <a-button class="button_upgrade" @click="showModalInsert()">
        <span>{{ $t('common.edit') }}</span>
      </a-button>
    </div>
    <div class="info_upgrade">
      <a-row class="company_name">
        <a-col :span="8">
          <div>{{ $t('user.company_name') }}</div>
        </a-col>
        <a-col :span="16">
          <div class="font__family">
            {{ user.company_name }}
          </div>
        </a-col>
      </a-row>

      <a-row class="mt-3">
        <a-col :span="8">
          <div>{{ $t('user.website_tab_info') }}</div>
        </a-col>
        <a-col :span="16">
          <div class="font__family">
            {{ user.website }}
          </div>
        </a-col>
      </a-row>

      <a-row class="mt-3">
        <a-col :span="8">
          <div>{{ $t('user.representative') }}</div>
        </a-col>
        <a-col :span="16">
          <div class="font__family">
            {{ user.representative }}
          </div>
        </a-col>
      </a-row>

      <a-row class="mt-3">
        <a-col :span="8">
          <div>{{ $t('user.phone_number') }}</div>
        </a-col>
        <a-col :span="16">
          <div class="font__family">
            {{ user.mobile_no }}
          </div>
        </a-col>
      </a-row>

      <a-row class="mt-3">
        <a-col :span="8">
          <div>{{ $t('user.user_email') }}</div>
        </a-col>
        <a-col :span="16">
          <div class="font__family">
            {{ user.email }}
          </div>
        </a-col>
      </a-row>

      <a-row class="mt-3">
        <a-col :span="8">
          <div>{{ $t('user.password') }}</div>
        </a-col>
        <a-col :span="16">
          <div type="password">
            <a @click="showModalChangePass()">{{ $t('common.resetting') }}</a>
          </div>
        </a-col>
      </a-row>

      <a-row class="mt-3 upgrade_bot">
        <a-col :span="8">
          <div>{{ $t('user.address') }}</div>
        </a-col>
        <a-col :span="16">
          <div class="font__family">
            {{ user.address }}
          </div>
        </a-col>
      </a-row>
    </div>
    <div id="InsertUser">
      <InsertUser
        ref="InsertUser"
        :user="user"
        @save="closeModalInsertUser"
        @update-user="refreshUserInfo"
      />
    </div>
    <div id="ChangePassword">
      <ChangePassword
        ref="ChangePassword"
        @save="closeModalChangePass"
      />
    </div>
  </div>
</template>
<script>
import InsertUser from '../setting/InsertUser.vue'
import ChangePassword from '../setting/ChangePassword.vue'
export default {
  components: {
    InsertUser,
    ChangePassword
  },
  data() {
    return {
      visible: false,
      changePassword: false,
      currentId: 0,
      activeKey: '1',
      filters: {
        name: this.$route.query.name || ''
      },
      defaultParams: {
        not_admin: 1
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
     * Refresh User Info
     */
    refreshUserInfo() {
      this.$emit('refresh-user-info')
    },
    /**
     * Open Modal insert user
     */
    showModalInsert() {
      this.$refs.InsertUser.open()
    },
    /**
     * Open Modal insert user
     */
    showModalChangePass() {
      this.$refs.ChangePassword.open()
    },
    /**
     * Close Modal insert user
     */
    closeModalInsertUser() {
      this.$refs.InsertUser.onClose()
    },
    /**
     * Open Modal change password
     */
    closeModalChangePass() {
      this.$refs.ChangePassword.onClose()
    }
  }
}
</script>

<style scoped>
.tab_title{
    width: 360px;
    height: 36px;
    left: 397px;
    top: 286px;

    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 700;
    font-size: 36px;
    line-height: 36px;
    /* identical to box height */
    color: #000000;
}
.box__shadow{
  width: 95%;
  margin-top: 8px;
  margin-left: 8px;
  margin-bottom: 32px;
  box-shadow: rgb(0 0 0 / 10%) 0px 4px 12px;
}
.button_upgrade{
  height: 42px;
  background: #1890FF;
}
.button_upgrade_form{
  padding-top: 45px;
  padding-bottom: 60px;
  padding-left: 24px
}
.button_upgrade span{
    width: 111px;
    height: 23.75px;
    /* 20 Gothic */
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 20px;
    line-height: 20px;
    color: #FFFFFF;
}
.info_upgrade{
    padding-left: 80px;
}
.available{
    width: 120px;
    height: 24px;
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 700;
    font-size: 24px;
    line-height: 24px;
    /* identical to box height */
    color: #000000;
}
.company_name, .mt-3{
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 20px;
    line-height: 20px;
    /* identical to box height */
    color: #000000;
}
.font__family {
  font-family: 'Open Sans';
}
.upgrade_bot{
    padding-bottom: 105px;
}
</style>
