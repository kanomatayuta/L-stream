<template>
  <a-modal
    v-model="visible"
    width="370px"
    :title="$t('insight_list.kol_tags_title')"
    :footer="null"
    @cancel="closeModal"
  >
    <div class="modal_content">
      <a-form-model
        ref="form"
        :rules="formRules"
        :model="model"
      >
        <a-spin :spinning="loading">
          <div class="tags">
            <a-tag
              v-for="(tag, index) in tags"
              :key="index"
              :value="tag.value"
              :class="(tag.status === true) ? 'tag_active' : 'tag_inactive'"
              @click="addTagKol(tag)"
            >
              {{ tag.hash_tags }}
            </a-tag>
          </div>
          <hr class="line" />
          <div class="add_tags">
            <a-form-model-item
              prop="tag_name"
            >
              <a-input
                v-model="model.tag_name"
                class="input_tag_name"
                :placeholder="$t('insight_list.kol_tags_placeholder')"
              />
            </a-form-model-item>

            <div class="btn_add_tag" @click="addTag">
              <font-awesome-icon
                icon="plus-circle"
                class="anticon"
              />
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
    id: {
      type: [Number, String],
      default: 0
    },
    tagArray: {
      type: [Array],
      default: () => []
    }
  },
  data() {
    return {
      resource: 'tag',
      visible: false,
      moment,
      model: {
        tag_name: ''
      },
      tags: []
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
            max: 255,
            message: this.$t('validation.tag_max', { field: this.$t('tag.tag_name'), max: 255 }),
            trigger: ['change', 'blur']
          },
          {
            whitespace: true,
            message: this.$t('validation.tag_whitespace', { field: this.$t('kol.hashtag') }),
            trigger: ['change', 'blur']
          }
        ]
      }
    }
  },
  watch: {
    id(val) {
      this.tagList()
    },

    tagArray(val) {
      this.tagList()
    }
  },
  methods: {
    /**
     * get Tag
     */
    getTag() {
      this.$emit('fetchTag')
    },

    /* Open dialog
     */
    open() {
      this.visible = true
    },

    /**
     * Open dialog
     */
    closeModal() {
      this.model.tag_name = ''
      this.$refs.form.clearValidate()
      this.$emit('reset-form')
      this.visible = false
    },

    /**
     * Attach tag for kol
     */
    async addTagKol(tag) {
      this.$store.dispatch('setLoading', true)
      try {
        if (tag.id) {
          this.tags[this.tags.findIndex(el => el.id === tag.id)].status = !this.tags[this.tags.findIndex(el => el.id === tag.id)].status
          await this.$api.tag.createKolTag({
            tag_id: tag.id,
            kol_id: this.id,
            status: tag.status
          })
          this.$emit('getKolTagActive', { tag, kol_id: this.id })
        }
      } catch (error) {
        this.$notification.error({
          message: this.$t('text.something_wrong')

        })
      } finally {
        this.$store.dispatch('setLoading', false)
        if (tag.status === true) {
          this.$notification.success({
            message: this.$t('insight.message_add_tag_success')
          })
        } else {
          this.$notification.success({
            message: this.$t('insight.message_remove_tag_success')
          })
        }
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
              await this.$api.tag.create({
                hash_tags: this.model.tag_name,
                user_id: get(this, '$auth.user.id', 0)
              })
              this.model.tag_name = ''
              this.$notification.success({
                message: this.$t('insight.message_add_tag_success')
              })
              this.$emit('fetchTag')
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
     * Get Tag List
     */
    async tagList() {
      this.$store.dispatch('setLoading', true)
      try {
        this.tags = await this.tagArray.map(el => {
          return {
            id: el.id,
            hash_tags: el.hash_tags,
            status: !!((el.kols && el.kols.length && el.kols.find(e => parseInt(e) === parseInt(this.id))))
          }
        })
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    }
  }
}
</script>
<style lang="scss" scoped>
    .modal_content {
        .tags {
          margin: 14px 24px 0px 24px;
        span.tag_inactive.ant-tag {
            background: transparent;
            color: black;
            border: 1px solid black;
        }
        span.tag_active.ant-tag {
            background: black;
            color: white;
        }
        span.ant-tag {
            display: inline-block;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            margin: 0.2rem 0.3rem 0.2rem 0.2rem;
            padding: 0 0.5rem;
            min-width: auto;
            max-width: 130px;
            height: 27px;
            text-align: center;
            line-height: 27px;
            cursor: pointer;
        }
        }
        .line {
            background:#d9d9d9;
            border: none;
            height: 1px;
            margin-bottom: 0px;
        }
        .add_tags {
            display: flex;
            justify-content: space-between;
            margin: 16px 24px 0px 24px;
            .ant-row.ant-form-item {
                margin-bottom: 16px;
                width: 87%;
            }
            .btn_add_tag {
                cursor: pointer;
                margin-top: 6px;
            }
            svg.anticon.svg-inline--fa.fa-plus-circle {
                font-size: 26px;
                color: #9a83ed;
            }
        }
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
    .input_tag_name {
      color: #000000;
    }
    /deep/ {
      .ant-modal-close-x {
        color: #000000;
        font-size: 17px ;
      }
      .btn_add_tag {
        padding-top: 4px;
        margin-left: 25px;
      }
      .ant-modal-title {
        font-size: 16px;
        color: #000000;
      }
      ::placeholder {
        font-weight: 400;
        font-size: 13px;
        color: #888888;
      }
      .ant-form-explain, .ant-form-extra {
        margin-top: 10px;
      }
    }
</style>
