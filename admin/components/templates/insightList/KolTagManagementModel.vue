<template>
  <a-modal
    v-model="visible"
    width="460px"
    :title="$t('insight_list.kol_tags_management')"
    :footer="null"
    :closable="false"
    :dialog-style="{ top: '80px' }"
    @cancel="closeModal"
  >
    <div class="modal_content">
      <a-form-model
        ref="form"
        :label-col="{ sm: 4 }"
        :wrapper-col="{ sm: 19 }"
        :model="model"
        :rules="formRules"
        :bordered="false"
      >
        <a-spin :spinning="loading">
          <div class="tags">
            <a-tag
              v-for="(tag, index) in tagArray"
              :key="index"
              :value="tag.value"
              :class="(tag.id === model.tag_id) ? 'tag_active' : 'tag_inactive'"
              @click="tagSelected(tag)"
            >
              {{ tag.hash_tags }}
            </a-tag>
            <hr class="line" />
          </div>
          <div class="add_tags">
            <a-row>
              <a-col
                :xs="5"
                :sm="5"
                :md="5"
                :lg="5"
                :xl="5"
                :span="5"
              >
                <div class="tag__name">
                  {{$t('insight_list.tag_name')}}
                </div>
              </a-col>
              <a-col
                :xs="19"
                :sm="19"
                :md="19"
                :lg="19"
                :xl="19"
                :span="19"
              >
                <a-form-model-item
                  prop="tag_name"
                >
                  <a-input
                    v-model="model.tag_name"
                    class="input_tag_name"
                    :placeholder="$t('insight_list.kol_tags_placeholder')"
                  />
                </a-form-model-item>
              </a-col>
            </a-row>
            <div class="btn_group text-right">
              <a-button
                v-if="model.tag_id"
                type="link"
                class="min-w-50"
                danger
                size="small"
                style="color:red"
                @click="confirmToDelete"
              >
                {{ $t('common.delete') }}
              </a-button>
              <a-button
                class="min-w-50"
                type="link"
                primary
                size="small"
                @click="addTag()"
              >
                {{ model.tag_id ? $t('insight_list.edit_tag_name') : $t('insight_list.add_tag_name') }}
              </a-button>
            </div>
          </div>
        </a-spin>
      </a-form-model>
    </div>
  </a-modal>
</template>
<script>
import moment from 'moment-timezone'
import { get } from 'lodash'
import { mapState } from 'vuex'

export default {
  props: {
    tagArray: {
      type: [Array],
      default: () => []
    }
  },
  data() {
    return {
      visible: false,
      moment,
      model: {
        tag_name: '',
        tag_id: 0
      }
    }
  },
  computed: {
    ...mapState({
      loading: 'loading'
    }),
    formRules() {
      return {
        tag_name: [
          {
            whitespace: true,
            message: this.$t('insight.message_add_tag_not_input'),
            trigger: ['change', 'blur']
          },
          {
            max: 255,
            message: this.$t('validation.tag_max', { field: this.$t('tag.tag_name'), max: 255 }),
            trigger: ['change', 'blur']
          }
        ]
      }
    }
  },
  methods: {
    /**
     * Open dialog
     */
    open() {
      this.model.tag_name = ''
      this.model.tag_id = 0
      this.visible = true
    },

    /**
     * Close dialog
     */
    closeModal() {
      this.$emit('reset-form')
      this.visible = false
      this.$refs.form.clearValidate()
    },

    /**
     * Tag Selected Event
     */
    tagSelected(tag) {
      if (this.model.tag_id === tag.id) {
        this.model.tag_name = ''
        this.model.tag_id = 0
      } else {
        this.model.tag_name = tag.hash_tags
        this.model.tag_id = tag.id
      }
    },

    /**
     * Validate before submit
     */
    addTag() {
      this.$refs.form.validate(async valid => {
        if (valid) {
          this.$store.dispatch('setLoading', true)

          try {
            if (this.model.tag_name) {
              if (this.model.tag_id) {
                this.confirmToUpdate()
              } else {
                await this.$api.tag.create({
                  hash_tags: this.model.tag_name,
                  user_id: get(this, '$auth.user.id', 0)
                })
                this.model.tag_name = ''
                this.$notification.success({
                  message: this.$t('insight.message_add_tag_success')
                })
              }
              this.$emit('fetch')
            } else {
              this.$notification.error({
                message: this.$t('insight.message_add_tag_not_input')
              })
            }
          } catch (error) {
            this.$notification.error({
              message: this.$t('text.hash_tags_error')
            })
          } finally {
            this.$store.dispatch('setLoading', false)
          }
        }
      })
    },

    /**
     * Confirm to delete
     *
     * @param {Number} id
     */
    confirmToDelete() {
      this.$confirm({
        icon: 'none',
        title: <div><h3>{this.$t('insight_list.confirm_tags_title')}</h3> <p>{this.$t('insight_list.confirm_tags_content')}</p></div>,
        okText: this.$t('insight_list.confirm_delete_yes_tags_title'),
        okType: 'link',
        cancelText: this.$t('insight_list.confirm_no_tags_title'),
        okButtonProps: { style: { boxShadow: 'none', border: 'none', color: '#1890FF', fontSize: '13px', fontWeight: 400 } },
        cancelButtonProps: { style: { boxShadow: 'none', border: 'none', color: '#1890FF', fontSize: '13px', fontWeight: 400 } },
        onOk: () => this.deleteRecord(this.model.tag_id),
        width: 380
      })
    },

    /**
     * Delete record
     *
     * @param {Number} id
     */
    async deleteRecord(id) {
      this.$store.dispatch('setLoading', true)

      try {
        await this.$api.tag.delete(id)

        this.model.tag_name = ''
        this.model.tag_id = 0

        this.$notification.success({
          message: this.$t('insight.message_delete_tag_success')
        })
        this.$emit('fetch')
        this.$emit('refreshData')
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    },

    /**
     * Confirm to delete
     *
     * @param {Number} id
     */
    confirmToUpdate() {
      this.$confirm({
        icon: 'none',
        title: <div><h3>{this.$t('insight_list.confirm_tags_title_update')}</h3> <p>{this.$t('insight_list.confirm_tags_content_update')}</p></div>,
        okText: this.$t('insight_list.confirm_yes_tags_title'),
        okType: 'link',
        cancelText: this.$t('insight_list.confirm_no_tags_title'),
        okButtonProps: { style: { boxShadow: 'none', border: 'none', color: '#1890FF', fontSize: '13px', fontWeight: 400 } },
        dialogStyle: { top: '500' },
        cancelButtonProps: { style: { boxShadow: 'none', border: 'none', color: '#1890FF', fontSize: '13px', fontWeight: 400 } },
        onOk: () => this.updateRecord(),
        width: 380
      })
    },
    /**
     * Update Or Create Record
     *
     * @param {Number} id
     */
    async updateRecord() {
      this.$store.dispatch('setLoading', true)

      try {
        if (this.model.tag_id) {
          await this.$api.tag.update(this.model.tag_id, {
            hash_tags: this.model.tag_name
          })
        }

        this.model.tag_name = ''
        this.model.tag_id = 0
        this.$notification.success({
          message: this.$t('insight.message_update_tag_success')
        })
        this.$emit('fetch')
        this.$emit('refreshData')
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.hash_tags_error')
        })
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    }
  }
}
</script>
  <style lang="scss" scoped>
      /deep/ {
        .input_tag_name.ant-input{
          font-family: 'Open Sans';
          font-style: normal;
          font-weight: 400;
          font-size: 13px;
          line-height: 18px;
          color: #000000;
        }
        .ant-input:placeholder-shown{
          font-family: 'BIZ UDGothic';
        }
        .ant-modal-header{
          border-bottom: 0px;
        }
        .ant-modal-title{
          font-family: 'BIZ UDGothic';
          font-style: normal;
          font-weight: 700;
          font-size: 16px;
          line-height: 16px;
          color: #000000;
          mix-blend-mode: normal;
        }
      }
      .modal_content {
          .ant-input::placeholder{
            font-weight: 400;
            font-size: 13px;
            color: #888888;
          }
          .tags {
          margin: 0px 24px 14px 24px;
          span.tag_inactive.ant-tag,
          span.tag_active.ant-tag {
            font-family: 'Open Sans';
            font-style: normal;
            font-weight: 400;
            font-size: 16px;
            line-height: 22px;
            color: #000000;
            border-radius: 4px;
            background: transparent;
          }
          span.tag_inactive.ant-tag {
            border: 1px solid black;
          }
          span.tag_active.ant-tag {
            border: 1px dashed #000000;
          }
          span.ant-tag {
              width: auto;
              height: 27px;
              text-align: center;
              line-height: 27px;
              margin-top: 6px;
              cursor: pointer;
          }
          }
          .line {
            margin-top: 15px;
            border: 1px solid #C0C0C0;
          }
          .add_tags {
            height: 115px;
            margin-right: 24px;
            margin-left: 24px;

            display: flex;
            flex-direction: column;
            justify-content: center;
              .ant-row.ant-form-item {
                  margin-bottom: 16px;
                  width: 100%;
              }
            /deep/ {
              .ant-form-item-label{
                margin-right: 15px;
                padding-right: 0px !important;
              }
              .ant-col.ant-form-item-control-wrapper {
                width: 100%;
              }
              .ant-form-item{
                display: flex;
                align-items: center;
              }
              .ant-form-item-label > label::after {
                content: "" !important;
                margin: 0;
              }
              .ant-form-item-label{
                padding-top: 4px;
              }
              .ant-form-explain {
                margin-top: 5px;
              }
            }
          }
      }
      .ant-modal-confirm-body .ant-modal-confirm-title h3{
        font-family: 'BIZ UDGothic';
        font-style: normal;
        font-weight: 400;
        font-size: 16px;
        line-height: 16px;
        color: #000000;
      }
      .ant-modal-confirm-body .ant-modal-confirm-title h3 ~ p{
        font-family: 'BIZ UDGothic';
        font-style: normal;
        font-weight: 400;
        font-size: 13px;
        line-height: 18px;
        margin-top: 17px;
        margin-bottom: 0px;
        color: #000000;
      }
      .ant-input:hover {
          border-color: #111111;
          border-right-width: 1px !important;
      }
      .ant-input:focus {
          border-color: #111111;
          outline: 0;
          -webkit-box-shadow: 0 0 0 2px rgba(12, 15, 19, 0.2);
          box-shadow: 0 0 0 2px rgba(12, 15, 19, 0.2);;
      }
      .tag__name{
        margin-top: 15px;
        font-family: 'BIZ UDGothic';
        font-style: normal;
        font-weight: 400;
        font-size: 16px;
        line-height: 16px;
        color: #000000;
      }
  </style>
