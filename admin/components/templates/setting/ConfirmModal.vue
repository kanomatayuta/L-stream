<template>
  <div>
    <a-modal
      v-model="confirm"
      :keyboard="false"
      :closable="false"
      centered
      :footer="null"
      :body-style="{height: 'auto', overflow: 'auto'}"
      @close="onClose"
    >
      <div class="confirm_description">
        <div class="title">
          {{ $t('setting.title_confirm_modal') }}
        </div>
        <div>
          <span>
            {{ $t('setting.confirm_description') }}
          </span>
          <br />
          <span>
            {{ $t('setting.infomation') }}
          </span>
        </div>
        <div class="mr-2 mt-4 text-right">
          <a @click="closeConfirm()">
            {{ $t('setting.confirm_modal') }}
          </a>
        </div>
      </div>
    </a-modal>
  </div>
</template>

<script>

export default {
  components: {
  },

  data() {
    return {
      resource: 'setting',
      data: {
      },
      confirm: false
    }
  },
  methods: {
    /**
     * Open dialog
     */
    open() {
      this.confirm = true
    },

    onClose() {
      this.confirm = false
    },
    /**
     *  Open modal if user dont save data
     */
    closeConfirm() {
      this.onClose()
    }
  }
}
</script>
<style scoped>
  .confirm_description{
    word-wrap: break-word;
    white-space: normal;
    padding-left: 50px;
    padding-bottom: 20px;
    padding-right: 20px;
    font-family: 'BIZ UDGothic';
  }
  .title{
    padding-top: 40px;
    padding-bottom: 20px;
    font-weight: 400;
    font-size: 20px;
    line-height: 23px;
    color: #000000;
  }
  .text-center{
    display: flex;
    justify-content: end;
    align-items: end;
  }
</style>
