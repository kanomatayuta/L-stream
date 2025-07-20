<template>
  <a-modal
    v-model="visible"
    :closable="false"
    :width="309"
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
      {{ $t('campaign_detail.edit_modal_content') }}
    </div>
    <div class="modal-footer">
      &nbsp;
      <div class="footer-content">
        <div
          class="ok"
          @click="confirm()"
        >
          {{ $t('common.yes') }}
        </div>
        <div
          class="cancel"
          @click="handleCancel()"
        >
          {{ $t('common.reject') }}
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
      this.$emit('close-modal')
    },
    confirm() {
      this.$emit('confirm-edit-mode')
    }
  }
}
</script>

<style scoped>
.modal-content {
  padding-left: 24px;
}

.title {
  padding-top: 21px;
  padding-left: 34px;
}

.title-content {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 700;
  font-size: 20px;
  line-height: 20px;
  color: #000000;
}

.modal-content {
  padding: 42.62px 48px 13px 34px;
  font-style: normal;
  font-family: 'BIZ UDGothic';
  font-weight: 400;
  font-size: 16px;
  line-height: 22px;
  color: #000000;
}

.modal-footer {
  display: flex;
  justify-content: space-around;
}

.footer-content {
  width: 50%;
  display: flex;
  justify-content: end;
  color: #1890FF;
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 22px;
  padding-bottom: 27px;
  padding-top: 13px;
}
.cancel{
  margin-left: 27px;
}
.ok,
.cancel {
  cursor: pointer;
}
</style>
