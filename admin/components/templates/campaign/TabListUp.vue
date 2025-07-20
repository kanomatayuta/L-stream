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
            :lg="4"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ data.total_kol_tab_list }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.number_of_kol') }}
            </div>
          </a-col>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="7"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ commaSeperate(data.total_follower_tab_list) }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.list_follower') }}
            </div>
          </a-col>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="4"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ data.total_kol_status_ok }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.ok_kol') }}
            </div>
          </a-col>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="5"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ commaSeperate(data.total_follower_status_ok) }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.ok_follower') }}
            </div>
          </a-col>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="4"
            :xl="4"
            :span="24"
          />
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="4"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <a-button class="button_csv" @click="exportExcel">
              {{ $t('campaign_detail.csv') }}
            </a-button>
          </a-col>
        </a-row>
        <a-row>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="5"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ data.campaign_detail_status_confirming_count }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.confirming') }}
            </div>
          </a-col>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="7"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ data.campaign_detail_status_discussing_count }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.discussing') }}
            </div>
          </a-col>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="4"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ data.campaign_detail_status_ng_count }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.ng') }}
            </div>
          </a-col>
          <a-col
            :xs="12"
            :sm="12"
            :md="4"
            :lg="5"
            :xl="4"
            :span="24"
            class="flex__col-content content__csv"
          >
            <div class="number__content">
              {{ data.campaign_detail_status_ok_count }}
            </div>
            <div class="form__content-title">
              {{ $t('campaign_detail.ok') }}
            </div>
          </a-col>
        </a-row>
      </a-col>
    </a-row>
    <div class="b-file">
      <div class="input-file" @click="onInput">
        {{ $t('campaign_detail.file') }}
      </div>
      <input
        id="file"
        ref="uploadFile"
        type="file"
        accept=".xls,.xlsx,.csv"
        hidden
        @change="handleFileUpload"
      />
    </div>
    <div class="table__overflow">
      <a-table
        :columns="columns"
        :row-key="record => record.id"
        :data-source="listUp"
        :pagination="false"
        :custom-row="customRow"
        :loading="loading"
        class="pointerCampaign"
        @change="handleTableChange"
      >
        <span slot="customTitle">
          <img
            src="/images/Vector.png"
          />
        </span>
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
          slot="kol_status"
          slot-scope="text, record"
          class="status-select"
          @click="onClickSelect = true"
        >
          <a-select
            v-if="record.kol_status <= 3"
            v-model="record.kol_status"
            @change="updateKolStatus(record.id, record.kol_status)"
          >
            <a-select-option
              v-for="(item, index) in KOL_STATUS"
              :key="index"
              :value="item.value"
            >
              {{ item.label }}
            </a-select-option>
          </a-select>
          <a-select
            v-if="record.kol_status > 3"
            :value="3"
            @change="updateKolStatus(record.id, record.kol_status)"
          >
            <a-select-option
              v-for="(item, index) in KOL_STATUS"
              :key="index"
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
          <a-button
            html-type="button"
            type="primary"
            ghost
            class="min-w-100 b-radius"
            @click="registerSingleKol(record.kol.username)"
          >
            {{ $t('campaign_detail.register') }}
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
        @fetchTag="getUserTagListUp"
      />
    </div>
    <div id="KolTagManagmentModelVue">
      <!-- end tag modal-detail -->
      <DbModal
        :id="currentId"
        ref="dbModal"
        :tag-list="tags"
        :social-type="social"
        @addTag="getUserTagListUp"
        @changeRate="changeListUp"
        @changeTag="changeListUp"
        @save="closeDialog()"
        @remove="$emit('changeListUp')"
      />
      <!-- end kol db modal-detail -->
      <div id="ShortReportModal">
        <short-report-modal ref="ShortReportModal" :username="username" />
      </div>
      <div id="ShortReportModalYoutube">
        <short-report-modal-youtube ref="ShortReportModalYoutube" :username="username" />
      </div>
      <div id="ShortReportModalTikTok">
        <short-report-modal-tiktok ref="ShortReportModalTikTok" :username="username" />
      </div>
      <!-- end modal-detail -->
      <a-modal
        :visible="register"
        :keyboard="false"
        :width="400"
        :footer="null"
        @cancel="register = false"
      >
        <div class="single-register-title">
          {{ $t('kol.single_register') }}
        </div>
        <hr />
        <a-spin :spinning="loading">
          <RegisterSingleKolModal
            :social-type="social"
            :single="kolUsername"
            :data-campaign="dataCampaign"
            @refresh-campaign="fetchListUp"
          />
        </a-spin>
      </a-modal>
    </div>
  </div>
</template>

<script>
import { mapState } from 'vuex'
import KolTagModelVue from '../insightList/KolTagModel.vue'
import DbModal from '../kol/DbModal.vue'
import {
  KOL_STATUS,
  INSTAGRAM_URL,
  SNS_INSTAGRAM_TYPE,
  SNS_YOUTUBE_TYPE,
  SNS_TIKTOK_TYPE,
  RESPONSE_CODE_FORBIDDEN
} from '~/constants'
import ShortReportModal from '~/components/templates/kol/ShortReportModal'
import ShortReportModalYoutube from '~/components/templates/kol/youtube/ShortReportModal'
import ShortReportModalTiktok from '~/components/templates/kol/tiktok/ShortReportModal'
import RegisterSingleKolModal from '~/components/templates/kol/RegisterSingleKolModal'
import Common from '~/mixins/common'

export default {
  components: {
    KolTagModelVue,
    DbModal,
    ShortReportModal,
    RegisterSingleKolModal,
    ShortReportModalYoutube,
    ShortReportModalTiktok
  },
  mixins: [
    Common
  ],

  async fetch() {
    const { data: { result: { data } } } = await this.$api.campaign.listCampaignActive({ params: { social_type: this.social } })
    this.dataCampaign = data
  },
  data() {
    return {
      id: 0,
      visible: false,
      register: false,
      kolUsername: '',
      currentId: 0,
      KOL_STATUS,
      INSTAGRAM_URL,
      onClickSelect: false,
      filters: {},
      uploadData: [],
      username: '',
      dataCampaign: []
    }
  },
  props: {
    data: {
      type: Object,
      default: null
    },
    listUp: {
      type: Array,
      default: () => []
    },
    tags: {
      type: Array,
      default: () => []
    },
    social: {
      type: [Number, String],
      default: 1
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
          width: 200
        },
        {
          title: 'ID',
          dataIndex: 'full_name',
          sortDirections: ['ascend', 'descend', 'ascend'],
          sorter: true,
          scopedSlots: { customRender: 'id' },
          width: 200
        },
        {
          title: this.$t('campaign_detail.followers_count'),
          dataIndex: 'followers_count',
          scopedSlots: { customRender: 'follower' },
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
          width: 200,
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
          width: 250
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
            const social = this.social
            if (this.onClickSelect === false && this.register === false && this.$refs.KolTagModelVue.visible === false && this.$refs.dbModal.visible === false) {
              if (social === SNS_YOUTUBE_TYPE) {
                this.shortReport(record.kol.social_id, social)
              } else {
                this.shortReport(record.kol.username, social)
              }
            } else {
              this.onClickSelect = false
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
    async updateKolStatus(id, kolStatus) {
      if (id) {
        if (kolStatus > 3) {
          this.$notification.error({
            message: this.$t('campaign_list_up.status_change_failed')
          })
        } else {
          try {
            await this.$api.campaignDetail.update(id, { kol_status: kolStatus, cost: 0 })
            this.$emit('updateTabListUp')
            this.$notification.success({
              message: this.$t('text.successfully')
            })
          } catch (_) {
            this.$notification.error({
              message: this.$t('text.something_wrong')
            })
          }
        }
      }
    },

    /**
     * Click on input file
     */
    onInput() {
      document.getElementById('file').click()
    },

    /**
     * Upload file excel
     */
    async handleFileUpload(e) {
      this.$notification.warning({
        message: this.$t('campaign_list_up.excel_add_warning')
      })
      this.uploadData = e.target.files[0]
      this.$store.dispatch('setLoading', true)
      try {
        const form = new FormData()
        form.append('file', this.uploadData)
        form.append('campaign_id', this.$route.params.id)
        form.append('social_type', this.social)
        const config = {
          headers: {
            'Content-Type': 'multipart/form-data'
          }
        }
        await this.$api.campaignDetail.importKols(form, config)
        this.$refs.uploadFile.value = null
        this.$emit('change-kol')
        this.$notification.success({
          message: this.$t('common.completed')
        })
      } catch (error) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      } finally {
        this.$store.dispatch('setLoading', false)
      }
    },
    /**
     * Close dialog
     *
     */
    closeDialog() {
      this.$refs.dbModal.onClose()
      this.$emit('changeListUp')
    },
    changeListUp() {
      this.$emit('changeListUp')
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
     * Show modal register only 1  kol to campaigns
     */
    registerSingleKol(username) {
      this.register = true
      this.kolUsername = username
      this.$fetch()
    },

    /**
     * Export excel
     */
    async exportExcel() {
      try {
        const params = {
          campaign_id: this.$route.params.id ? +this.$route.params.id : 0
        }
        const rawData = await this.$api.campaign.exportExcel(
          params,
          { responseType: 'arraybuffer' }
        )
        const fileName = this.data.campaigns.name
        this.$notification.success({
          message: this.$t('notification.csv_download_success')
        })
        this.$csv.download({ rawData, fileName })
      } catch (e) {
        // eslint-disable-next-line no-prototype-builtins
        if (e.hasOwnProperty('response') && e.response.status === RESPONSE_CODE_FORBIDDEN) {
          this.$notification.error({
            message: this.$t(e.response.data.message_code)
          })
        } else {
          this.$notification.error({
            message: this.$t('text.something_wrong')
          })
        }
      }
    },

    /**
     * Get User Tag
     */
    getUserTagListUp() {
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
        this.listUp[this.listUp.findIndex(campaign => campaign.kol.id === tag.kol_id)].kol.tags = [...this.listUp[this.listUp.findIndex(campaign => campaign.kol.id === tag.kol_id)].kol.tags, ...[tag.tag]]
      } else if (tag && !tag.tag.status) {
        const kolTag = this.listUp[this.listUp.findIndex(campaign => campaign.kol.id === tag.kol_id)].kol.tags
        const tagInactiveIndex = kolTag.findIndex(kol => kol.id === tag.tag.id)
        this.listUp[this.listUp.findIndex(campaign => campaign.kol.id === tag.kol_id)].kol.tags.splice(tagInactiveIndex, 1)
      }
      this.$emit('changeListUp')
    },

    fetchListUp() {
      this.$fetch()
      this.$emit('change-kol')
    }
  }
}
</script>
<style lang="scss" scoped>
.pointerCampaign {
  cursor: pointer;
}
.b-file {
  padding: 20px;
  display: flex;
  justify-content: end;
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

.input-file {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 16px;
  color: #1890FF;
  cursor: pointer;
}
.table__overflow{
  overflow: auto;
}
.b-table{
  padding-top: 60px;
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

.box__shadow{
  margin-top: 16px;
  padding: 0 30px;
  @include mq(max_lg) {
    padding: 0;
  }
  /deep/ {
    .ant-row{
      margin: 30px 0;
    }
    .ant-row:first-child{
      margin-bottom: 40px;
    }
    .button_csv{
      background: #FFFFFF;
      border: 1px solid #1890FF;
      border-radius: 100px;
      width: 85px;
      height: 38px;
      color: #000000;
      font-family: 'Open Sans';
      @include mq(max_lg) {
        margin-top: -10px;
      }
    }
  }
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
  .ant-select-selection__rendered, .table__font-item .ant-tag{
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
  .ant-select-selection-selected-value {
    padding-top: 3px;
    float: none;
  }
  .ant-select-selection {
    height: 35px;
  }
  .ant-table-tbody > tr > td.ant-table-column-sort {
    background: #FFFFFF;
  }
  div[title='Sort'] {
    pointer-events: none;
  }
}
.form__content-title {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 23px;
  text-align: center;
  color: #737373;
}
.pb {
  margin-bottom: 25px;
}
.status-select {
  margin-top: 30px;

}
.font__family{
  font-family: 'Open Sans';
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
