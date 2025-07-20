<template>
  <div>
    <a-drawer
      :closable="false"
      :width="504"
      :footer="null"
      :visible="visible"
      @close="onClose"
    >
      <form
        @submit.prevent="handleSubmit"
      >
        <div class="modal-button">
          <div
            class="close-button"
            @click="visible = false"
          >
            <a-icon type="close" />
          </div>
          <a-button
            ghost
            html-type="button"
            size="big"
            class="register-button"
            type="primary"
            @click="showRegister(data.id)"
          >
            {{ $t('common.register') }}
          </a-button>
        </div>
        <div class="avatar">
          <img
            alt=""
            :src="data.avatar_url"
          />
        </div>
        <div class="full-name">
          {{ data.full_name }}
        </div>
        <div class="user-name">
          @
          <a
            v-if="data.social_type === 1"
            :href="INSTAGRAM_URL + data.username"
          >
            {{ data.username }}
          </a>
          <a
            v-if="data.social_type === 2"
            :href="YOUTUBE_URL + data.username"
          >
            {{ data.username }}
          </a>
          <a
            v-if="data.social_type === 3"
            :href="TIKTOK_URL + data.username"
          >
            {{ data.username }}
          </a>
        </div>
        <div class="review">
          <a-rate
            v-model="model.rate"
            @change="rating()"
          />
        </div>
        <div class="hashtag">
          <a-tag
            v-for="(tag, index) in data.tags"
            :key="index"
          >
            {{ tag.hash_tags }}
          </a-tag>
        </div>
        <div
          class="add"
          @click="showModal(data.id)"
        >
          <a-icon type="plus" />{{ $t('common.add') }}
        </div>
        <div class="memo">
          <a-textarea
            v-model="model.comment"
            :auto-size="{ minRows: 5, maxRows: 10 }"
            :placeholder="$t('kol.memo')"
          />
        </div>
        <div class="bot-button">
          <a-button
            html-type="submit"
            size="big"
            class="save-button"
            type="primary"
          >
            {{ $t('common.save') }}
          </a-button>
        </div>
      </form>
      <div class="table-kol">
        <a-table
          :columns="columns"
          :data-source="data.campaigns"
          :loading="loading"
          :pagination="false"
          style="overflow: auto"
        >
          <template
            slot="SNS"
            slot-scope="text, record"
          >
            <div v-if="record.social_type === 1">
              <a-icon type="instagram" />
            </div>
            <div v-else-if="record.social_type === 2">
              <a-icon type="youtube" theme="filled" />
            </div>
            <div v-else-if="record.social_type === 3">
              <img
                class="img__tiktok"
                src="~/static/images/tiktok.png"
                alt="instagram"
              />
            </div>
          </template>
          <template
            slot="created_at"
            slot-scope="text, record"
          >
            <div>
              {{ record.created_at ? moment(record.created_at).format(FORMAT_DATE_SLASH) : '' }}
            </div>
          </template>
        </a-table>
      </div>
      <!-- end main-table -->
      <div id="KolTagModelVue">
        <KolTagModelVue
          :id="kolTagId"
          ref="KolTagModelVue"
          :tag-array="tagList"
          @getKolTagActive="getTagDb"
          @fetchTag="$emit('addTag')"
        />
      </div>
      <!-- end modal-detail -->
      <a-modal
        ref="detail"
        :visible="show"
        :width="400"
        :footer="null"
        @cancel="show = false"
      >
        <div class="single-register-title">
          {{ $t('kol.single_register') }}
        </div>
        <hr />
        <a-spin :spinning="loading">
          <RegisterSingleKolModal
            ref="registerSingleKol"
            :social-type="socialType"
            :single="data.username"
            :data-campaign="dataCampaign"
            @refresh-campaign="changeCamp"
          />
        </a-spin>
      </a-modal>
      <a-drawer />
    </a-drawer>
  </div>
</template>

<script>
import moment from 'moment-timezone'
import { mapState } from 'vuex'
import KolTagModelVue from '~/components/templates/insightList/KolTagModel.vue'
import { FORMAT_DATE_SLASH, INSTAGRAM_URL, YOUTUBE_URL, TIKTOK_URL } from '~/constants'
import RegisterSingleKolModal from '~/components/templates/kol/RegisterSingleKolModal'

export default {
  components: {
    KolTagModelVue,
    RegisterSingleKolModal
  },

  async fetch() {
    const { data: { result: { data } } } = await this.$api.campaign.listCampaignActive({ params: { social_type: this.socialType } })
    this.dataCampaign = data
  },

  data() {
    return {
      resource: 'kolRating',
      data: {
        id: 0,
        social_type: 0,
        social_id: 0,
        full_name: '',
        username: '',
        description: '',
        avatar_url: '',
        like_avg: 0,
        comment_avg: 0,
        posts_count: 0,
        followers_count: 0,
        engagement_count: 0,
        engagement_rate: 0,
        campaigns: [],
        tags: [],
        ratings: {
          comment: '',
          rate: 0,
          kol_id: 0,
          user_id: 0
        }
      },
      model: {
        comment: '',
        rate: 0,
        kol_id: 0,
        user_id: 0
      },
      dataCampaign: [],
      show: false,
      FORMAT_DATE_SLASH,
      INSTAGRAM_URL,
      YOUTUBE_URL,
      TIKTOK_URL,
      moment,
      visible: false,
      kolTagId: 0
    }
  },

  computed: {
    ...mapState({
      loading: 'loading'
    }),
    repository() {
      return this.$api[this.resource]
    },

    header() {
      return [
        {
          title: this.$t('module.campaign_modal_db'),
          dataIndex: 'name',
          width: '33%'
        },
        {
          title: this.$t('module.genre'),
          dataIndex: 'genre.name',
          width: '25%'
        },
        {
          title: 'SNS',
          scopedSlots: { customRender: 'SNS' },
          width: '15%'
        },
        {
          title: this.$t('common.created_date'),
          dataIndex: 'created_at',
          scopedSlots: { customRender: 'created_at' },
          width: '27%'
        }
      ]
    },

    columns() {
      return this.header.map(item => {
        return item
      })
    }
  },

  props: {
    id: {
      type: [Number, String],
      default: 0
    },
    tagList: {
      type: Array,
      default: () => []
    },
    socialType: {
      type: [Number, String],
      default: 1
    }
  },

  methods: {
    /**
     * Open dialog
     */
    open() {
      this.visible = true
    },

    onClose() {
      this.visible = false
    },

    /**
     * Star rate
     */
    async rating() {
      this.$store.dispatch('setLoading', true)
      try {
        const userId = this.$auth.user.id
        if (!this.data.ratings) {
          await this.repository.create(this.model)
          this.getDB(this.id)
          this.$emit('changeRate')
        } else {
          await this.repository.update(this.data.ratings.kol_id, userId, this.model)
          this.getDB(this.id)
          this.$emit('changeRate')
        }
        this.$notification.success({
          message: this.$t('save.success')
        })
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    },

    /**
     * Get kol info
     */
    async getDB(id) {
      this.$store.dispatch('setLoading', true)
      try {
        if (id) {
          const { data: { result: { data } } } = await this.$api.kol.show(id)
          this.data = data
          if (data.ratings) {
            this.model = data.ratings
          } else {
            this.model = {
              comment: '',
              rate: 0,
              kol_id: this.id,
              user_id: this.$auth.user.id
            }
          }
        }
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    },

    /**
     *  Submit kol rating
     */
    async handleSubmit() {
      this.$store.dispatch('setLoading', true)
      try {
        const userId = this.$auth.user.id
        if (!this.data.ratings) {
          await this.repository.create(this.model)
          this.getDB(this.id)
        } else {
          await this.repository.update(this.model.kol_id, userId, this.model)
          this.getDB(this.id)
        }

        this.$notification.success({
          message: this.$t('save.success')
        })

        this.$emit('save')
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    },

    /**
     * Open Modal
     */
    showModal(id) {
      if (id) {
        this.kolTagId = id
      }
      this.$refs.KolTagModelVue.open()
      this.$refs.KolTagModelVue.getTag()
    },

    /**
     * Open Register
     */
    showRegister() {
      this.show = true
      this.$fetch()
    },

    /**
     * Event add or remove kol from campaign
     */
    changeCamp() {
      this.$fetch()
      this.getDB(this.id)
      this.$emit('remove')
    },

    /**
     * Event add tag
     */
    getTagDb(tag) {
      if (tag && tag.tag.status) {
        this.data.tags = [...this.data.tags, ...[tag.tag]]
      } else if (tag && !tag.tag.status) {
        const kolTag = this.data.tags
        const tagInactiveIndex = kolTag.findIndex(({ id }) => id === tag.tag.id)
        this.data.tags.splice(tagInactiveIndex, 1)
      }
      this.$emit('changeTag')
    }
  }
}
</script>

<style lang="scss" scoped>
.modal-button {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.register-button {
  width: 105px;
  height: 45px;
  border-radius: 0;
}

.avatar {
  display: flex;
  justify-content: center;
  align-items: center;
}

img {
  width: 210px;
  height: 210px;
  border-radius: 50%;
  margin-top: 61px;
  object-fit: cover;
}
img.img__tiktok{
  width: 100%;
  height: 100%;
  border-radius: 0;
  margin-top: 0;
  object-fit: none;
  margin-left: -5px;
}
.full-name {
  margin-top: 25px;
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 700;
  font-size: 24px;
  line-height: 33px;
  text-align: center;
  color: #000000;
  display: flex;
  justify-content: center;
  align-items: center;
}

.user-name {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  font-size: 20px;
  line-height: 27px;
  color: #1890FF;
  display: flex;
  justify-content: center;
  align-items: center;
  text-decoration: underline;
}

.review {
  margin-top: 12px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.hashtag {
  justify-content: center;
  align-items: center;
  font-weight: 400;
  font-size: 20px;
  margin: 0px 24px 14px 24px;
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
    width: auto;
    height: 27px;
    text-align: center;
    line-height: 27px;
    margin-top: 14px;
    cursor: pointer;
  }
}

.add {
  display: flex;
  justify-content: center;
  align-items: center;
  font-weight: 400;
  font-size: 20px;
  color: #1890FF;
  cursor: pointer;
  margin-top: 15px;
}

.rated {
  color: #FFC800;
}

.memo {
  padding: 25px 0px 11px;
}

.table-kol {
  padding: 25px 0px 50px;
}

/deep/ {
  .memo textarea.ant-input {
    border: 1px solid #888888;
    border-radius: 3px;
    padding: 19px;
    font-family: 'Noto Sans JP';
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    line-height: 23px;
    color: #888888;
  }
  .register-button span {
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 24px;
    line-height: 24px;
    color: #1890FF;
  }
  .ant-input:placeholder-shown{
    font-family: 'Noto Sans JP';
    font-style: normal;
    font-weight: 400;
    line-height: 23px;

    color: #888888;
  }
  .bot-button {
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .bot-button button{
    border-radius: 0 !important;
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    line-height: 16px;
    color: #FFFFFF;
    min-width: 80px;
    min-height: 34px;
  }
  .close-button >i {
    font-size: 26px;
    color: #1890FF;
  }
  .single-register-title {
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 700;
    font-size: 16px;
    line-height: 16px;
    color: #000000;
    mix-blend-mode: normal;
    padding-top: 21px;
    padding-left: 20px;
    padding-bottom: 18px;
  }

  .ant-table-thead > tr > th {
    font-family: 'Noto Sans JP';
    font-style: normal;
    font-size: 16px;
    line-height: 23px;
    color: #000000;
  }
  td{
    font-family: 'Open Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    line-height: 22px;
    color: #000000;
  }
  span.ant-table-column-title {
    font-weight: 400 !important;
  }
  .anticon.anticon-star svg {
    width: 29.76px;
    height: 28.69px;
    cursor: pointer;
  }
  .anticon.anticon-instagram svg {
    width: 22.5px;
    height: 21px;
  }
  span.ant-tag {
    overflow: hidden;
    text-overflow: ellipsis;
    min-width: auto;
    max-width: 100px;
    height: 27px;
    text-align: center;
    line-height: 27px;
  }
}

.close-button {
  width: 56px;
  height: 56px;
  background: #B9E5F9;
  align-items: center;
  justify-content: center;
  display: flex;
  border-radius: 50%;
  cursor: pointer;
}

</style>
