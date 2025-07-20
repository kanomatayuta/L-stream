<template>
  <a-modal
    v-model="visible"
    :closable="false"
    :width="338"
    :footer="null"
    :keyboard="false"
    :mask-closable="false"
    centered
  >
    <div class="title">
      <div class="title-content">
        {{ $t('common.note') }}
      </div>
    </div>
    <div class="modal-content">
      {{ $t('campaign_detail.save_modal_content') }}
    </div>
    <div class="modal-footer">
      &nbsp;
      <div class="footer-content">
        <div
          class="cancel"
          @click="handleCancel()"
        >
          {{ $t('campaign_detail.save_modal_cancel_text') }}
        </div>
        <div
          class="ok"
          @click="confirm()"
        >
          {{ $t('common.yes') }}
        </div>
      </div>
    </div>
  </a-modal>
</template>

<script>
export default {
  props: {
    visible: {
      type: Boolean,
      default: false
    }
  },
  data() {
    return {
    }
  },
  methods: {
    handleCancel() {
      this.$emit('close-save-modal')
    },
    confirm() {
      this.$emit('save-modal')
    }
  }
}
</script>

<style lang="scss" scoped>
/deep/ {
  .ant-modal-content {
    min-height: 160px !important;
  }
}
.title {
  padding-top: 18px;
  padding-left: 21.58px;
}

.title-content {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 16px;
  color: #000000;
}

.modal-content {
  padding: 20.64px 16px 30px 17px;
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 13px;
  line-height: 18px;
  color: #000000;
}

.modal-footer {
  display: flex;
  justify-content: space-around;
}
.footer-content {
  width: 50%;
  display: flex;
  justify-content: space-between;
  color: #1890FF;
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 13px;
  line-height: 18px;
  padding-bottom: 21px;
}

.cancel,
.ok {
  cursor: pointer;
}
</style>
