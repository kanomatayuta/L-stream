<template>
  <div>
    <a-row>
      <a-col
        :xs="24"
        :sm="24"
        :md="24"
        :lg="24"
        :xl="16"
        class="box__shadow"
      >
        <a-row>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="6"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ data.total_kol_tab_post }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.number_of_kol') }}
            </div>
          </a-col>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="6"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ commaSeperate(data.total_follower_tab_post) }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.follower') }}
            </div>
          </a-col>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="6"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ commaSeperate(data.campaign_detail_cost) }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.cost') }}
            </div>
          </a-col>
        </a-row>
        <a-row>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="6"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ data.campaign_detail_status_pending_count }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.pending') }}
            </div>
          </a-col>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="6"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ data.campaign_detail_status_product_sent_count }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.product_sent') }}
            </div>
          </a-col>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="6"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ data.campaign_detail_status_waiting_for_draft_count }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.waiting_for_draft') }}
            </div>
          </a-col>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="6"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ data.campaign_detail_status_waiting_for_post_count }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.waiting_for_post') }}
            </div>
          </a-col>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="6"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ data.campaign_detail_status_waiting_for_insight_count }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.waiting_for_insight') }}
            </div>
          </a-col>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="6"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ data.campaign_detail_status_done_count }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.done') }}
            </div>
          </a-col>
        </a-row>
      </a-col>
    </a-row>
    <div class="table__overflow">
      <a-table
        :columns="columns"
        :row-key="record => record.id"
        :data-source="tabPost"
        :pagination="false"
        :loading="loading"
        :custom-row="customRow"
        class="b-table"
        @change="handleTableChange"
      >
        <span slot="customTitle"><img
          src="/images/Vector.png"
        /></span>
        <template
          slot="avatar"
          slot-scope="text, record"
        >
          <div class="text-center column-avatar">
            <img
              alt="avatar"
              :src="record.kol.avatar_url ? record.kol.avatar_url : getSrc('user.jpg')"
              class="rounded-circle border-circle"
            />
            <br />
            <a-rate :value="record.kol.rating ? record.kol.rating.rate : 0" disabled />
          </div>
        </template>
        <div slot="id" slot-scope="text, record">
          <div class="kol__fullname">
            {{ record.kol.full_name }}
          </div>
        </div>
        <template
          slot="follower"
          slot-scope="text, record"
        >
          <div class="font__family">
            {{ commaSeperate(record.kol.followers_count) }}
          </div>
        </template>
        <template
          slot="engagement"
          slot-scope="text, record"
        >
          <div class="font__family">
            {{ record.kol.engagement_rate ? record.kol.engagement_rate : 0 }}%
          </div>
        </template>
        <span slot="tags" slot-scope="tags, record">
          <a-tag
            v-for="(tag, index) in record.kol.tags"
            :key="index"
          >
            {{ tag.hash_tags }}
          </a-tag>
          <br />
          <a-button
            :class="{ pb: record.kol.tags.length === 0 }"
            class="button-border"
            html-type="button"
            type="primary"
            size="small"
            ghost
            @click="showModal(record.kol.id)"
          >
            <a-icon
              type="plus"
            />
            {{ $t('campaign_detail.add_tag') }}
          </a-button>
        </span>
        <div
          slot="cost"
          slot-scope="text, record"
          @click="onClickInput = true"
        >
          <a-input-number
            v-model="record.cost"
            :placeholder="$t('campaign_detail.cost')"
            :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
            :parser="value => value.replace(/\''\s?|(,*)/g, '')"
            @blur="onChangeCost(record.id,record.cost)"
            class="font__family"
          />
        </div>
        <div
          slot="kol_status"
          slot-scope="kol_status, record"
          class="kol__status-flex"
          @click="onClickSelect = true"
        >
          <a-select
            v-model="record.kol_status"
            @change="updateKolStatus(record.id, record.kol_status, record.kol.id)"
          >
            <a-select-option
              v-for="(item, index) in KOL_STATUS_POST"
              :key="index"
              :value="item.value"
            >
              {{ item.label }}
            </a-select-option>
          </a-select>
        </div>
        <template
          slot="action"
          slot-scope="text,record"
        >
          <a-button
            html-type="button"
            type="primary"
            ghost
            class="min-w-100 b-radius"
            @click="showDbDetail(record.kol.id)"
          >
            {{ $t('campaign_detail.DB') }}
          </a-button>
        </template>
      </a-table>
    </div>
    <div id="KolTagModelVue">
      <KolTagModelVue
        :id="id"
        ref="KolTagModelVue"
        :tag-array="tags"
        @getKolTagActive="getKolTagActive"
        @fetchTag="getUserTagPost"
      />
    </div>
    <div id="KolTagManagmentModelVue">
      <!-- end tag modal-detail -->
      <DbModal
        :id="currentId"
        ref="dbModal"
        :tag-list="tags"
        :social-type="campaign.social_type"
        @addTag="getUserTagPost"
        @changeRate="changePost"
        @changeTag="changePost"
        @save="closeDialog()"
      />
      <!-- end kol db modal-detail -->
      <div id="ShortReportModal">
        <short-report-modal
          ref="ShortReportModal"
          :username="username"
        />
      </div>
      <div id="ShortReportModalYoutube">
        <short-report-modal-youtube
          ref="ShortReportModalYoutube"
          :username="username"
        />
      </div>
      <div id="ShortReportModalTikTok">
        <short-report-modal-tiktok
          ref="ShortReportModalTikTok"
          :username="username"
        />
      </div>
      <!-- end modal-detail -->
    </div>
  </div>
</template>

<script>
import { mapState } from 'vuex'
import KolTagModelVue from '../insightList/KolTagModel.vue'
import DbModal from '../kol/DbModal.vue'
import { KOL_STATUS_POST, INSTAGRAM_URL, SNS_INSTAGRAM_TYPE, SNS_YOUTUBE_TYPE, SNS_TIKTOK_TYPE } from '~/constants'
import ShortReportModal from '~/components/templates/kol/ShortReportModal'
import ShortReportModalYoutube from '~/components/templates/kol/youtube/ShortReportModal'
import ShortReportModalTiktok from '~/components/templates/kol/tiktok/ShortReportModal'
import Common from '~/mixins/common'

export default {
  components: {
    KolTagModelVue,
    DbModal,
    ShortReportModal,
    ShortReportModalYoutube,
    ShortReportModalTiktok
  },
  mixins: [
    Common
  ],

  data() {
    return {
      visible: false,
      currentId: 0,
      KOL_STATUS_POST,
      INSTAGRAM_URL,
      onClickSelect: false,
      onClickInput: false,
      SNS_INSTAGRAM_TYPE,
      filters: {},
      uploadData: [],
      username: '',
      id: 0,
      recordReport: {}
    }
  },
  props: {
    campaign: {
      type: Object,
      default: null
    },
    data: {
      type: Object,
      default: null
    },
    tabPost: {
      type: Array,
      default: () => []
    },
    tags: {
      type: Array,
      default: () => []
    }
  },
  computed: {
    header() {
      return [
        {
          dataIndex: 'kol.rating.rate',
          slots: { title: 'customTitle' },
          scopedSlots: { customRender: 'avatar' },
          align: 'center',
          width: 180
        },
        {
          title: 'ID',
          dataIndex: 'username',
          scopedSlots: { customRender: 'id' },
          sorter: true,
          sortDirections: ['ascend', 'descend', 'ascend'],
          width: 180
        },
        {
          title: this.$t('campaign_detail.followers_count'),
          scopedSlots: { customRender: 'follower' },
          dataIndex: 'followers_count',
          sortDirections: ['ascend', 'descend', 'ascend'],
          sorter: true,
          width: 200,
          class: 'table__font'
        },
        {
          title: this.$t('campaign_detail.engagement'),
          dataIndex: 'engagement_rate',
          scopedSlots: { customRender: 'engagement' },
          sortDirections: ['ascend', 'descend', 'ascend'],
          sorter: true,
          width: 200,
          class: 'table__font'
        },
        {
          title: this.$t('campaign_detail.tag'),
          dataIndex: 'kol.tags',
          scopedSlots: { customRender: 'tags' },
          width: 180,
          class: 'table__font-item'
        },
        {
          title: this.$t('campaign_detail.cost'),
          dataIndex: 'cost',
          scopedSlots: { customRender: 'cost' },
          align: 'center',
          width: 150,
          class: 'table__font-item'
        },
        {
          title: this.$t('campaign_detail.status'),
          dataIndex: 'kol_status',
          scopedSlots: { customRender: 'kol_status' },
          align: 'center',
          width: 150,
          class: 'table__font-item'
        },
        {
          dataIndex: 'action',
          scopedSlots: { customRender: 'action' },
          width: 150
        }
      ]
    },
    ...mapState({
      loading: 'loading'
    }),
    columns() {
      return this.header.map(item => {
        item.sortOrder = null
        if (this.$route.query.order_by === item.dataIndex && this.$route.query.order_type) {
          item.sortOrder = +this.$route.query.order_type === 1 ? 'ascend' : 'descend'
        }
        return item
      })
    }
  },

  methods: {
    /**
     * Open modal short report
     *
     * @param {Object} record
     */
    customRow(record) {
      return {
        on: {
          click: () => {
            const social = this.campaign.social_type
            if (this.onClickSelect === false && this.onClickInput === false && this.$refs.KolTagModelVue.visible === false && this.$refs.dbModal.visible === false) {
              if (social === SNS_YOUTUBE_TYPE) {
                this.shortReport(record.kol.social_id, social)
              } else {
                this.shortReport(record.kol.username, social)
              }
            } else {
              this.onClickSelect = false
              this.onClickInput = false
            }
          }
        }
      }
    },
    /**
     * Handle table change
     *
     * @param {Object} Filters
     * @param {Object} Sorter
     */
    handleTableChange(pagination, filters, sorter) {
      const query = {
        order_by: sorter.order ? sorter.field : null,
        order_type: sorter.order ? +(sorter.order === 'ascend') : null
      }
      this.replaceQuery(query)
    },
    /**
     * Replace query
     *
     * @param {Object} Data query
     */
    replaceQuery(data) {
      const query = {}
      const newQuery = {
        ...this.$route.query,
        ...data
      }
      Object.entries(newQuery).forEach(([key, value]) => {
        if (value !== '' && value !== null && value !== undefined) {
          query[key] = value
        }
      })
      if (JSON.stringify(query) === JSON.stringify(this.$route.query)) {
        setTimeout(() => this.$emit('fetchData'), 500)
      } else {
        this.$router.push({ query })
        setTimeout(() => this.$emit('fetchData'), 500)
      }
    },
    /**
     * Update status kol
     *
     * @param id
     * @param kolStatus
     */
    async updateKolStatus(id, kolStatus, kolId) {
      if (this.campaign.social_type === SNS_INSTAGRAM_TYPE) {
        const { data: { result: { data } } } = await this.$api.campaignDetailPost.findRecord(id)
        this.recordReport = data
        if (this.recordReport.length > 0) {
          this.$notification.error({
            message: this.$t('campaign.tab_post.error')
          })
          this.$emit('updateStatus')
        } else {
          try {
            await this.$api.campaignDetail.update(id, { kol_status: kolStatus })
            this.$emit('updateTabPost')
            this.$notification.success({
              message: this.$t('text.successfully')
            })
          } catch (_) {
            this.$notification.error({
              message: this.$t('text.something_wrong')
            })
          }
        }
      } else {
        const { data: { result: { data } } } = await this.$api.campaignDetailPost.findRecord(id)
        this.recordReport = data
        if (this.recordReport.length > 0) {
          this.$notification.error({
            message: this.$t('campaign.tab_post.error')
          })
          this.$emit('updateStatus')
        } else {
          try {
            await this.$api.campaignDetail.update(id, { kol_status: kolStatus })
            this.$emit('updateTabPost')
            this.$notification.success({
              message: this.$t('text.successfully')
            })
            if (kolStatus === 8) {
              await this.$api.campaignDetailPost.createPostYoutube(this.campaign.id, { campaign_detail_id: id, kol_id: kolId })
              if (this.campaign.campaign_mode === 1) {
                if (this.campaign.social_type === SNS_YOUTUBE_TYPE) {
                  this.$emit('updateReportYoutube')
                } else {
                  this.$emit('updateReportTiktok')
                }
              }
            }
          } catch (_) {
            this.$notification.error({
              message: this.$t('text.something_wrong')
            })
          }
        }
      }
    },

    /**
     * Close dialog
     */
    closeDialog() {
      this.$refs.dbModal.onClose()
      this.$emit('change-post')
    },

    changePost() {
      this.$emit('change-post')
    },

    /**
     * Show kol db detail
     *
     * @param {number} id - Item Id
     */
    showDbDetail(id) {
      if (id) {
        this.currentId = id
        this.$refs.dbModal.open()
        this.$refs.dbModal.getDB(this.currentId)
      }
    },

    /**
     * Open Modal
     */
    showModal(id) {
      if (id) {
        this.id = id
      }
      this.$refs.KolTagModelVue.open()
      this.$refs.KolTagModelVue.getTag()
    },

    /**
     * On change cost
     * @param id
     * @param cost
     */
    async onChangeCost(id, cost) {
      try {
        await this.$api.campaignDetail.update(id, { cost })
        await this.$api.campaignDetailPost.updateCost(id, { cost })
        this.$emit('updateCost', id)
        this.$notification.success({
          message: this.$t('save.success')
        })
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
        this.$emit('updateStatus')
      }
    },

    /**
     * Get User Tag
     */
    getUserTagPost() {
      this.$emit('get-tag')
    },

    /**
     * Get URL image
     */
    getSrc(src) {
      if (src) {
        return require(`~/static/images/${src}`)
      }
      return ''
    },

    /**
     * Show model short report
     * @param username
     * @param social
     */
    shortReport(username, social) {
      if (username && social) {
        this.username = username
        if (social === SNS_INSTAGRAM_TYPE) {
          this.$refs.ShortReportModal.open()
          this.$refs.ShortReportModal.getReport(this.username)
        }
        if (social === SNS_YOUTUBE_TYPE) {
          this.$refs.ShortReportModalYoutube.open()
          this.$refs.ShortReportModalYoutube.getReport(this.username)
        }
        if (social === SNS_TIKTOK_TYPE) {
          this.$refs.ShortReportModalTikTok.open()
          this.$refs.ShortReportModalTikTok.getReport(this.username)
        }
      }
    },
    getKolTagActive(tag) {
      if (tag && tag.tag.status) {
        this.tabPost[this.tabPost.findIndex(campaign => campaign.kol.id === tag.kol_id)].kol.tags = [...this.tabPost[this.tabPost.findIndex(campaign => campaign.kol.id === tag.kol_id)].kol.tags, ...[tag.tag]]
      } else if (tag && !tag.tag.status) {
        const kolTag = this.tabPost[this.tabPost.findIndex(campaign => campaign.kol.id === tag.kol_id)].kol.tags
        const tagInactiveIndex = kolTag.findIndex(kol => kol.id === tag.tag.id)
        this.tabPost[this.tabPost.findIndex(campaign => campaign.kol.id === tag.kol_id)].kol.tags.splice(tagInactiveIndex, 1)
      }
      this.$emit('change-post')
    }
  }
}
</script>
<style lang="scss" scoped>
.table__overflow{
  overflow: auto;
}
.b-table{
  padding-top: 60px;
  cursor: pointer;
}
.b-radius {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 20px;
  line-height: 27px;
  color: #1890FF;
  width: 99px;
  height: 35px;
  border: 1px solid #1890FF;
  border-radius: 3px;
}
.button-border{
  border-radius: 0;
  margin-top: 4px;
}
.content__csv{
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 23px;
  text-align: center;
}
.number__content {
  margin-bottom: 20px;
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 700;
  text-align: center;
  color: #000000;
}
.flex__col-content {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}
/deep/ {
  span.ant-tag {
    overflow: hidden;
    text-overflow: ellipsis;
    min-width: auto;
    max-width: 100px;
    height: 27px;
    text-align: center;
    line-height: 27px;
  }
  .kol__status-flex{
    display: flex;
  }
  .ant-select-selection-selected-value {
    padding-top: 3px;
    float: none;
  }
  .status-select {
    margin-top: 30px;
  }
  .ant-select-selection {
    height: 35px;
  }
  .ant-table-header-column {
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    line-height: 16px;
    color: #000000;
  }
  .table__font{
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 20px;
    line-height: 27px;
    color: #000000;
  }
  .ant-input, .ant-select-selection__rendered, .table__font-item .ant-tag{
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    color: #000000;
  }
  .kol__fullname{
    font-family: 'Open Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    line-height: 22px;
    color: #000000;
  }
  .kol__usename{
    font-family: 'Open Sans';
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    line-height: 22px;
    color: #1890FF;
  }
  .ant-tag {
    margin-bottom: 6px;
  }
  .ant-rate-star-zero .ant-rate-star-second {
    color: #888888;
  }
}
.box__shadow{
  margin-top: 16px;
  /deep/ {
    .ant-row{
      margin: 30px 0;
    }
    .ant-row:first-child{
      margin-bottom: 40px;
    }
  }
}
.pb {
  margin-bottom: 25px;
}
.font__family{
  font-family: 'Open Sans';
  /deep/ {
    input.ant-input-number-input {
      font-size: 16px;
    }
    .ant-input-number-handler-wrap {
      display: none;
    }
  }
}
@media (max-width: 767.98px) {
  .form__content-title {
    margin-bottom: 20px;
  }
}
@media (min-width: 1201px) and (max-width: 1607.98px) {
  .box__shadow {
    width: 85%;
  }
  .form__content-title {
    font-size: 14px;
  }
}
</style>
