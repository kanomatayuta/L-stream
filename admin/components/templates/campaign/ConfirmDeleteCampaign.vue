<template>
  <a-modal
    v-model="visible"
    :closable="false"
    :width="500"
    :footer="null"
    :keyboard="false"
    :mask-closable="false"
    centered
  >
    <div class="title">
      <div class="title-content">
        {{ $t('campaign_confirm_modal.title') }}
      </div>
    </div>
    <div class="modal-content">
      {{ $t('campaign_confirm_modal.content') }}
    </div>
    <div class="modal-footer">
      <div class="footer-content">
        <div
          class="cancel"
          @click="handleCancel()"
        >
          {{ $t('common.reject') }}
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
    },
    id: {
      type: [Number, String],
      default: 0
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
      this.$emit('confirm')
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
}

.modal-content {
  padding: 42.62px 48px 13px 34px;
  font-style: normal;
  font-family: 'BIZ UDGothic';
  font-weight: 400;
  font-size: 16px;
  line-height: 22px;
}

.modal-footer {
  display: flex;
  justify-content: end;
}

.footer-content {
  width: 50%;
  display: flex;
  justify-content: space-around;
  color: #1890FF;
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 22px;
  padding-bottom: 27px;
  padding-top: 13px;
  padding-right: 55px;
}

.ok,
.cancel {
  cursor: pointer;
}

</style>
