<template>
  <div class="card-insight-list">
    <a-card class="card-insight-list">
      <a-form-model
        ref="form"
        layout="inline"
        :label-col="{ sm: 24}"
        :wrapper-col="{ sm: 24 }"
        label-align="left"
        class="mb-4"
        :model="filters"
        @submit.prevent="search"
      >
        <div class="search_box">
          <div class="basic_info">
            {{ $t('insight.basic_info') }}
          </div>
          <a-row>
            <a-col
              :md="6"
              :lg="12"
              :xl="6"
              :xxl="6"
            >
              <a-col :md="12" :sm="8">
                <a-form-model-item
                  prop="followers_count_min"
                  :label-col="{ sm: 24}"
                  :wrapper-col="{ sm: 24}"
                  class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
                >
                  <div class="label">
                    {{ $t('insight.youtube_subscribers') }}
                  </div>
                  <a-select
                    v-model="filters.followers_count_min"
                    allow-clear
                  >
                    <a-select-option
                      v-for="(item, index) in FOLLOWERS_MIN"
                      :key="index"
                      :value="item.value"
                    >
                      {{ item.label }}
                    </a-select-option>
                  </a-select>
                </a-form-model-item>
              </a-col>
              <a-col :md="12" :sm="8">
                <a-form-model-item
                  prop="followers_count_max"
                  :label-col="{ sm: 24}"
                  :wrapper-col="{ sm: 24}"
                  class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
                >
                  <div class="label" />
                  <a-select
                    v-model="filters.followers_count_max"
                    allow-clear
                  >
                    <a-select-option
                      v-for="(item, index) in FOLLOWERS_MAX"
                      :key="index"
                      :value="item.value"
                    >
                      {{ item.label }}
                    </a-select-option>
                  </a-select>
                </a-form-model-item>
              </a-col>
            </a-col>
            <i class="fa-sharp fa-solid fa-circle-exclamation" />
            <a-col
              :md="6"
              :lg="12"
              :xl="6"
              :xxl="6"
            >
              <a-col :md="12" :sm="8">
                <a-form-model-item
                  prop="avg_view_min"
                  :label-col="{ sm: 24}"
                  :wrapper-col="{ sm: 24}"
                  class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
                >
                  <div class="label">
                    {{ $t('insight.youtube_avg_view') }}
                  </div>
                  <a-select
                    v-model="filters.avg_view_min"
                    allow-clear
                  >
                    <a-select-option
                      v-for="(item, index) in TIKTOK_VIEW_MIN"
                      :key="index"
                      :value="item.value"
                    >
                      {{ item.label }}
                    </a-select-option>
                  </a-select>
                </a-form-model-item>
              </a-col>
              <a-col :md="12" :sm="8">
                <a-form-model-item
                  prop="avg_view_max"
                  :label-col="{ sm: 24}"
                  :wrapper-col="{ sm: 24}"
                  class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
                >
                  <div class="label" />
                  <a-select
                    v-model="filters.avg_view_max"
                    allow-clear
                  >
                    <a-select-option
                      v-for="(item, index) in TIKTOK_VIEW_MAX"
                      :key="index"
                      :value="item.value"
                    >
                      {{ item.label }}
                    </a-select-option>
                  </a-select>
                </a-form-model-item>
              </a-col>
            </a-col>

            <a-col
              :md="4"
              :lg="12"
              :xl="4"
              :xxl="4"
            >
              <a-form-model-item
                prop="last_post"
                class="ant-col-md-24"
              >
                <div class="label_wrapper">
                  <label for="last_post">{{ $t('insight.youtube_kol_last_media') }}</label>
                  <a-tooltip>
                    <template slot="title">
                      <span>{{ $t('kol.last_post_time_issue') }}</span>
                    </template>
                    <img
                      src="/images/Info.png"
                      alt="Info"
                    />
                  </a-tooltip>
                </div>
                <a-select
                  v-model="filters.last_post_time"
                  mode="single"
                  allow-clear
                >
                  <a-select-option
                    v-for="(item, index) in LAST_POST_TIME"
                    :key="index"
                    :value="item.value"
                  >
                    {{ item.label }}
                  </a-select-option>
                </a-select>
              </a-form-model-item>
            </a-col>
            <a-col
              :md="4"
              :lg="12"
              :xl="4"
              :xxl="4"
            >
              <a-form-model-item
                prop="engagement_rate"
                class="ant-col-md-24"
              >
                <div class="label_wrapper">
                  <label for="last_post">{{ $t('insight.youtube_er') }}</label>
                  <a-tooltip>
                    <template slot="title">
                      <span>{{ $t('insight.youtube_engagement_info') }}</span>
                    </template>
                    <img
                      src="/images/Info.png"
                      alt="Info"
                    />
                  </a-tooltip>
                </div>
                <a-select
                  v-model="filters.engagement_rate"
                  allow-clear
                >
                  <a-select-option
                    v-for="(item, index) in ENGAGERMENTS"
                    :key="index"
                    :value="item.value"
                  >
                    {{ item.label }}
                  </a-select-option>
                </a-select>
              </a-form-model-item>
            </a-col>
          </a-row>
          <a-row class="search_box--row2">
            <a-col
              :md="8"
              :lg="12"
              :xl="8"
              :xxl="8"
            >
              <a-col :md="12">
                <a-form-model-item
                  prop="amount_money_min"
                  :label-col="{ sm: 24}"
                  :wrapper-col="{ sm: 24}"
                  class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
                >
                  <div class="label">
                    {{ $t('insight.youtube_kol_price') }}
                  </div>
                  <a-input
                    v-model="filters.amount_money_min"
                    placeholder="From"
                    allow-clear
                  />
                </a-form-model-item>
              </a-col>
              <a-col :md="12">
                <a-form-model-item
                  prop="amount_money_max"
                  :label-col="{ sm: 24}"
                  :wrapper-col="{ sm: 24}"
                  class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
                >
                  <div class="label" />
                  <a-input
                    v-model="filters.amount_money_max"
                    placeholder="To"
                    allow-clear
                  />
                </a-form-model-item>
              </a-col>
            </a-col>
            <a-col
              :md="4"
              :lg="12"
              :xl="4"
              :xxl="4"
            >
              <a-form-model-item
                prop="tiktok_genre"
                class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
              >
                <div class="label">
                  {{ $t('insight.youtube_genre') }}
                </div>
                <a-select
                  v-model="filters.tiktok_genre"
                  allow-clear
                >
                  <a-select-option
                    v-for="(item, index) in GENRES"
                    :key="index"
                    :value="item.value"
                  >
                    {{ item.label }}
                  </a-select-option>
                </a-select>
              </a-form-model-item>
            </a-col>
            <a-col
              :md="8"
              :lg="12"
              :xl="8"
              :xxl="8"
            >
              <a-button type="link" class="btn-manage-tag" @click="openKolTagManagementModelVue()">
                {{ $t('insight.manage') }}
              </a-button>
              <a-form-model-item
                prop="tag"
                class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
              >
                <div class="label">
                  {{ $t('insight.youtube_tags') }}
                </div>
                <a-select
                  v-model="filters.tag"
                  mode="multiple"
                  :get-popup-container="(triggerNode) => triggerNode"
                  allow-clear
                >
                  <a-select-option
                    v-for="(item, index) in tags"
                    :key="index"
                    :value="item.id"
                  >
                    {{ item.hash_tags }}
                  </a-select-option>
                </a-select>
              </a-form-model-item>
            </a-col>
            <a-col
              :md="4"
              :lg="12"
              :xl="4"
              :xxl="4"
            >
              <a-form-model-item
                prop="free_word"
                class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
              >
                <div class="label_wrapper">
                  <label for="free_word">{{ $t('insight.youtube_freeword') }}</label>
                  <a-tooltip>
                    <template slot="title">
                      <span>{{ $t('kol.fee_word_issue') }}</span>
                    </template>
                    <img
                      src="~/static/images/Info.png"
                      alt="Info"
                    />
                  </a-tooltip>
                </div>
                <a-input
                  v-model="filters.free_word"
                  allow-clear
                  placeholder="Any"
                />
              </a-form-model-item>
            </a-col>
          </a-row>
          <a-row>
            <a-col
              :span="12"
              :md="24"
            >
              <a-form-model-item
                prop="username"
                class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
              >
                <div class="label">
                  {{ $t('insight.youtube_username') }}
                </div>
                <a-select
                  v-model="filters.usernames"
                  placeholder="@username"
                  mode="multiple"
                  show-search
                  style="width: 100%"
                  :filter-option="false"
                  :not-found-content="fetching ? undefined : null"
                  allow-clear
                  @search="fetchUser"
                  @change="handleChange"
                >
                  <a-spin v-if="fetching" slot="notFoundContent" size="small" style="display: inline-block; margin: 10px auto " />

                  <a-select-option v-for="(user, index) in userSearchList" :key="index" :value="user.username">
                    <span role="img" :aria-label="user.username">
                      <img :src="user.avatar_url" alt="" class="avatar" />
                    </span>
                    {{ user.username }}
                  </a-select-option>
                </a-select>
              </a-form-model-item>
            </a-col>
          </a-row>
        </div>
        <hr />
        <div class="search_box">
          <a-row>
            <a-col
              :md="4"
              :lg="8"
              :xl="4"
              :xxl="4"
            >
              <a-form-model-item
                prop="tiktok_share_rate"
                class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
              >
                <div class="label">
                  {{ $t('campaign_detail.share_rate') }}
                </div>
                <a-input-number
                  v-model="filters.tiktok_share_rate"
                  :placeholder="$t('campaign_detail.share_rate')"
                  allow-clear
                />
              </a-form-model-item>
            </a-col>
            <a-col
              :md="4"
              :lg="8"
              :xl="4"
              :xxl="4"
            >
              <a-form-model-item
                prop="tiktok_engagement_rate"
                class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
              >
                <div class="label">
                  {{ $t('insight.engagement_rate') }}
                </div>
                <a-input-number
                  v-model="filters.tiktok_engagement_rate"
                  :placeholder="$t('insight.engagement_rate')"
                  allow-clear
                />
              </a-form-model-item>
            </a-col>
            <a-col
              :md="4"
              :lg="8"
              :xl="4"
              :xxl="4"
            >
              <a-form-model-item
                prop="tiktok_roas"
                class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
              >
                <div class="label">
                  {{ $t('insight.roas') }}
                </div>
                <a-input-number
                  v-model="filters.tiktok_roas"
                  :placeholder="$t('insight.roas')"
                  allow-clear
                />
              </a-form-model-item>
            </a-col>
          </a-row>
          <div class="search-btn text-right mt-3 mb-5">
            <a-col
              :md="24"
              class="text-right"
            >
              <a-button
                style="border: red 1px solid; color: red;"
                html-type="button"
                type="default"
                :disabled="loading"
                @click="reset"
              >
                <a-icon type="close" />
                {{ $t('common.delete') }}
              </a-button>
              &nbsp;
              <a-button
                html-type="submit"
                type="primary"
                :disabled="loading"
              >
                <font-awesome-icon
                  icon="search"
                  class="mr-1"
                />
                {{ $t('common.search') }}
              </a-button>
            </a-col>
          </div>
        </div>
      </a-form-model>
      <!-- end main-search -->
      <a-table
        :columns="columns"
        :row-key="record => record.id"
        :data-source="data"
        :pagination="false"
        :loading="loading"
        :custom-row="customRow"
        @change="handleTableChange"
      >
        <span slot="customTitle">
          <img src="/images/Vector.png" />
        </span>
        <template
          slot="avatar"
          slot-scope="text, record"
        >
          <div class="text-center column-avatar">
            <a
              @click="shortReport(record.username)"
            >
              <img
                alt="avatar"
                :src="record.avatar_url ? record.avatar_url : getSrc('user.jpg')"
                class="rounded-circle border-circle"
              />
            </a>
            <br />
            <a-rate :value="record.ratings ? record.ratings.rate : 0" disabled />
          </div>
        </template>
        <div slot="id" slot-scope="text, record">
          <div class="full-name font-weight-500">
            {{ record.full_name }}
          </div>
          <div class="user-name">
            <a
              :href="TIKTOK_URL + record.username"
              target="_blank"
            >
              @{{ record.username }}
            </a>
          </div>
        </div>
        <div slot="follower" slot-scope="text, record">
          <div class="column-slot font-weight-500">
            {{ convertNumber(record.followers_count) }}
          </div>
          <div class="follow">
            {{ $t('insight.followers') }}
          </div>
        </div>
        <div slot="engagement" slot-scope="text, record">
          <span class="column-slot font-weight-500">
            {{ convertNumber(record.engagement_count) }}
            ({{ record.engagement_rate }}{{ $t('kol.percentage') }})
          </span>
        </div>
        <div v-if="tags" slot="tags" slot-scope="tags, record">
          <a-tag
            v-for="(tag, index) in tags"
            :key="index"
            class="tag_inactive mb-1"
          >
            {{ tag.hash_tags }}
          </a-tag>
          <div>
            <a-button
              html-type="button"
              type="primary"
              ghost
              class="add_tag_btn"
              @click.stop="showModal(record.id)"
            >
              <a-icon
                type="plus"
              />
              {{ $t('insight.add_tag') }}
            </a-button>
          </div>
        </div>
        <template
          slot="action"
          slot-scope="text,record"
        >
          <a-button
            html-type="button"
            type="primary"
            class="min-w-100 btn_db"
            ghost
            @click="showDbDetail(record.id)"
          >
            {{ $t('insight.DB') }}
          </a-button>
        </template>
      </a-table>
      <!-- end main-table -->
    </a-card>
    <div id="KolTagModelVue">
      <KolTagModelVue :id="id" ref="KolTagModelVue" :tag-array="tags" @getKolTagActive="getKolTagActive" @fetchTag="getUserTag" />
    </div>
    <div id="KolTagManagmentModelVue">
      <KolTagManagementModelVue :id="id" ref="KolTagManagementModelVue" :tag-array="tags" @fetch="getUserTag" @refreshData="$fetch" />
      <!-- end tag modal-detail -->
      <DbModal
        :id="currentId"
        ref="dbModal"
        :tag-list="tags"
        :social-type="social"
        @changeRate="changeRate()"
        @save="closeDialog()"
        @changeTag="changeTag()"
        @addTag="getUserTag"
      />
      <!-- end kol db modal-detail -->
      <div id="ShortReportModal">
        <short-report-modal ref="ShortReportModal" :username="username" />
      </div>
      <!-- end modal-detail -->
    </div>
  </div>
</template>
<script>
import debounce from 'lodash/debounce'
import { mapState } from 'vuex'
import DataTable from '~/mixins/data-table'
import {
  FOLLOWERS_MIN,
  FOLLOWERS_MAX,
  ENGAGERMENTS,
  LAST_POST_TIME,
  GENRES,
  SHARE_RATES,
  AGES,
  AREAS,
  CATEGORY_AND_INTEREST,
  TIKTOK_URL,
  SNS_TIKTOK_TYPE,
  TIKTOK_VIEW_MIN,
  TIKTOK_VIEW_MAX
} from '~/constants'
import KolTagModelVue from '~/components/templates/insightList/KolTagModel.vue'
import KolTagManagementModelVue from '~/components/templates/insightList/KolTagManagementModel.vue'
import DbModal from '~/components/templates/kol/DbModal.vue'
import ShortReportModal from '~/components/templates/kol/tiktok/ShortReportModal'

export default {
  components: {
    KolTagModelVue,
    DbModal,
    ShortReportModal,
    KolTagManagementModelVue
  },
  props: {
    social: {
      type: [Number, String],
      default: 1
    }
  },
  mixins: [
    DataTable
  ],

  fetch() {
    this.$store.dispatch('setLoading', true)

    try {
      const params = this.$route.query
      if (this.defaultParams && typeof this.defaultParams === 'object') {
        Object.entries(this.defaultParams).forEach(([key, value]) => {
          params[key] = value
        })
      }
      if (params.usernames) {
        params.username = params.usernames
        delete params.usernames
      }
      if (this.social !== this.$route.query.social_type) {
        this.changeTabFetch(params)
      } else {
        this.fetchData(params)
      }
    } catch (_) {
      this.$notification.error({
        message: this.$t('text.something_wrong')
      })
    } finally {
      this.$store.dispatch('setLoading', false)
    }
  },

  data() {
    this.lastFetchId = 0
    this.fetchUser = debounce(this.fetchUser, 800)

    return {
      url_active: false,
      resource: 'kol',
      FOLLOWERS_MIN,
      FOLLOWERS_MAX,
      TIKTOK_VIEW_MAX,
      TIKTOK_VIEW_MIN,
      GENRES,
      ENGAGERMENTS,
      LAST_POST_TIME,
      SHARE_RATES,
      CATEGORY_AND_INTEREST,
      TIKTOK_URL,
      AGES,
      AREAS,
      visible: false,
      currentId: 0,
      filters: {
        followers_count_max: this.$route.query.followers_count_max || '',
        followers_count_min: this.$route.query.followers_count_min || '',
        avg_view_min: this.$route.query.avg_view_min || '',
        avg_view_max: this.$route.query.avg_view_max || '',
        last_post_time: +this.$route.query.last_post_time || undefined,
        engagement_rate: +this.$route.query.engagement_rate || '',
        amount_money_min: this.$route.query.amount_money_min || '',
        amount_money_max: this.$route.query.amount_money_max || '',
        tiktok_genre: this.$route.query.tiktok_genre || '',
        tag: +this.$route.query.tag || undefined,
        free_word: this.$route.query.free_word || '',
        usernames: this.$route.query.usernames || undefined,
        tiktok_share_rate: this.$route.query.tiktok_share_rate || '',
        tiktok_engagement_rate: this.$route.query.tiktok_engagement_rate || '',
        tiktok_roas: this.$route.query.tiktok_roas || ''
      },
      kolList: [],
      tags: [],
      id: 0,
      username: '',
      userSearchList: [],
      data: [],
      SNS_TIKTOK_TYPE,
      fetching: false
    }
  },

  computed: {
    header() {
      return [
        {
          dataIndex: 'rate',
          slots: { title: 'customTitle' },
          scopedSlots: { customRender: 'avatar' },
          align: 'center',
          width: 280
        },
        {
          title: 'ID',
          dataIndex: 'id',
          scopedSlots: { customRender: 'id' },
          align: 'left',
          width: 280
        },
        {
          title: this.$t('insight.followers_count'),
          dataIndex: 'followers_count',
          scopedSlots: { customRender: 'follower' },
          sorter: true,
          align: 'left',
          width: 240
        },
        {
          title: this.$t('insight.engagement'),
          dataIndex: 'engagement_rate',
          scopedSlots: { customRender: 'engagement' },
          sorter: true,
          align: 'left',
          width: 285
        },
        {
          title: this.$t('insight.tag'),
          dataIndex: 'tags',
          align: 'left',
          scopedSlots: { customRender: 'tags' },
          width: 195
        },
        {
          dataIndex: 'action',
          align: 'left',
          scopedSlots: { customRender: 'action' }
        }
      ]
    },
    ...mapState({
      loading: 'loading'
    })
  },
  watch: {
    $route() {
      if (Object.keys(this.$route.query).length === 0) {
        this.filters = {
          followers_count_min: '',
          followers_count_max: '',
          avg_view_min: '',
          avg_view_max: '',
          last_post_time: '',
          engagement_rate: '',
          amount_money_min: '',
          amount_money_max: '',
          tiktok_genre: '',
          tag: undefined,
          free_word: '',
          usernames: undefined,
          tiktok_share_rate: '',
          tiktok_engagement_rate: '',
          tiktok_roas: ''
        }
      }
    }
  },

  created() {
    this.getUserTag()
  },
  methods: {
    async fetchData(params) {
      params.social_type = SNS_TIKTOK_TYPE
      const { data: { result: { data, meta } } } = await this.$api.kol.getListKolInCampaign({ params })
      this.pagination = {
        ...this.pagination,
        total: meta ? meta.total : data.length,
        current: params.page ? +params.page : 1,
        pageSize: params.limit ? +params.limit : 20
      }
      this.data = data
    },

    async changeTabFetch(params) {
      this.filters = {
        followers_count_min: '',
        followers_count_max: '',
        avg_view_min: '',
        avg_view_max: '',
        last_post_time: '',
        engagement_rate: '',
        amount_money_min: '',
        amount_money_max: '',
        tiktok_genre: '',
        tag: undefined,
        free_word: '',
        usernames: undefined,
        tiktok_share_rate: '',
        tiktok_engagement_rate: '',
        tiktok_roas: ''
      }
      const request = {
        social_type: SNS_TIKTOK_TYPE
      }
      const { data: { result: { data, meta } } } = await this.$api.kol.getListKolInCampaign({ params: request })
      this.pagination = {
        ...this.pagination,
        total: meta ? meta.total : data.length,
        current: params.page ? +params.page : 1,
        pageSize: params.limit ? +params.limit : 20
      }
      this.data = data
      this.$route.query.social_type = this.social
    },
    /**
     * Open modal short report
     *
     * @param {Object} record
     */
    customRow(record) {
      return {
        on: {
          click: () => {
            if (this.url_active === false && this.$refs.dbModal.visible === false) {
              this.shortReport(record.username)
            } else {
              this.url_active = false
            }
          }
        }
      }
    },

    /**
     * On clear form search
     */
    reset() {
      this.filters = {
        followers_count_min: '',
        followers_count_max: '',
        avg_view_min: '',
        avg_view_max: '',
        last_post_time: '',
        engagement_rate: '',
        amount_money_min: '',
        amount_money_max: '',
        tiktok_genre: '',
        tag: undefined,
        free_word: '',
        usernames: undefined,
        tiktok_share_rate: '',
        tiktok_engagement_rate: '',
        tiktok_roas: ''
      }
      this.search()
    },

    /**
     * Close dialog
     */
    closeDialog() {
      this.$refs.dbModal.onClose()
      this.$fetch()
    },

    changeRate() {
      this.$fetch()
    },

    changeTag() {
      this.$fetch()
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
     * Open Modal
     */
    openKolTagManagementModelVue() {
      this.$refs.KolTagManagementModelVue.open()
    },

    shortReport(username) {
      if (username) {
        this.username = username
        this.$refs.ShortReportModal.open()
        this.$refs.ShortReportModal.getReport(this.username)
      }
    },

    /**
     * Search data
     */
    search() {
      this.replaceQuery(this.filters)
      this.$notification.warning({
        message: this.$t('insight.waiting')
      })
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
     * Convert Follower Number .
     */
    convertNumber(value) {
      return Intl.NumberFormat('en-US', {
        notation: 'compact',
        maximumFractionDigits: 1
      }).format(value)
    },

    /**
     * Get User Tag
     */
    async getUserTag() {
      try {
        const { data: { result: { data } } } = await this.$api.tag.list()
        this.tags = data
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      }
    },

    getKolTagActive(tag) {
      if (tag && tag.tag.status) {
        this.data[this.data.findIndex(({ id }) => id === tag.kol_id)].tags = [...this.data[this.data.findIndex(({ id }) => id === tag.kol_id)].tags, ...[tag.tag]]
      } else if (tag && !tag.tag.status) {
        const kolTag = this.data[this.data.findIndex(({ id }) => id === tag.kol_id)].tags
        const tagInactiveIndex = kolTag.findIndex(({ id }) => id === tag.tag.id)
        this.data[this.data.findIndex(({ id }) => id === tag.kol_id)].tags.splice(tagInactiveIndex, 1)
      }
    },
    async fetchUser(value) {
      try {
        this.lastFetchId += 1
        this.userSearchList = []
        this.fetching = true
        const params = {
          search: value,
          st: 'tiktok'
        }
        const { data: { result: { data } } } = await this.$api.kol.usernameSuggest({ params })
        const userSearchList = data.map(user => ({
          username: user.username,
          avatar_url: user.avatar_url,
          user_id: user.user_id
        }))
        this.userSearchList = userSearchList
      } catch (_) {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      } finally {
        this.fetching = false
      }
    },
    handleChange(value) {
      Object.assign(this, {
        value,
        userSearchList: [],
        fetching: false
      })
    }
  }
}
</script>
<style lang="scss" scoped>
hr {
  margin: 24px 0;
  border: none;
  border-top: 1px solid #e8e8e8;
}
.search_box--row2{
  /deep/ {
    .ant-input-affix-wrapper {
      margin-top: 4px;
    }
  }
}
.anticon-star {
  font-size: 16px !important;
}
.card-insight-list {
  .ant-card-body{
    .ant-form-inline {
      .ant-form-item {
        padding:5px;
        .ant-form-item-label {
          label {
            &::before {
              content: "" !important;
            }
          }
        }
      }
    }
  }
}
.btn-issues-form {
  cursor: pointer;
}
.btn-manage-tag{
  position: absolute;
  right: 0;
  border: none;
  z-index: 1;
  color:  #1890FF;
  top:5px;
}
.column-avatar {
  .rounded-circle {
    border-radius: 50%;
    width: 65px;
    height: 65px;
    object-fit: cover;
  }
}
.column-slot{
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  font-size: 20px;
  line-height: 27px;
  color: #000000;
}
// Form Css
.basic_info {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 700;
  font-size: 18px;
  line-height: 18px;
  margin-left: 5px;
  color: #000000;
  margin-bottom: 31px;
  display: flex;
}
.label {
  font-weight: 400;
  font-size: 16px;
  color: black;
  height: 23px;
  line-height: 23px;
}
.label_wrapper {
  height: 23px;
  line-height: 23px;
  label {
    font-size: 16px;
    color: black;
  }
  img {
    margin-bottom: 5px;
  }
}
/deep/ {
  .ant-table {
    overflow-x: auto;
  }
  .ant-row.ant-form-item{
    width: 100%;
  }
  .ant-input-number{
    background: #FAFAFA;
    border: 1px solid #C0C0C0;
    border-radius: 4px;
  }
  .ant-input-number-input, .ant-input-number-input-wrap, .ant-input-number {
    width: 100%;
    min-height: 38px;
  }
  .ant-input-number-handler-wrap{
    display: none;
  }
  .ant-select-selection--multiple{
    min-height: 38px;
    background: #FAFAFA;
    border: 1px solid #C0C0C0;
    border-radius: 4px;
    ::placeholder {
      font-style: normal;
      font-weight: 400;
      font-size: 13px;
      line-height: 18px;

      color: #C0C0C0;
    }
  }
  .ant-select-selection--multiple > ul > li, .ant-select-selection--multiple .ant-select-selection__rendered > ul > li{
    height: 30px;
    line-height: 30px;
  }
  .ant-select-selection--multiple .ant-select-selection__clear, .ant-select-selection--multiple .ant-select-arrow {
    top: 19px;
  }
  .ant-select-selection.ant-select-selection--single, .ant-input {
    min-height: 38px;
    background: #FAFAFA;
    border: 1px solid #C0C0C0;
    border-radius: 4px;
    ::placeholder {
      font-style: normal;
      font-weight: 400;
      font-size: 13px;
      line-height: 18px;

      color: #C0C0C0;
    }
  }
  .ant-select-selection__rendered{
    min-height: 35px;
  }
  .ant-select-selection--single {
    min-height: 38px;
  }
  .ant-select-selection-selected-value {
    height: 38px;
    line-height: 38px;
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
  span.tag_inactive.ant-tag {
    background: transparent;
    color: black;
    border: 1px solid black;
  }
  .add_tag_btn {
    height: 26.5px;
    width: 75px;
    border-radius: 0px;
    padding: 0px !important;
  }

  // Css Dropdown Tag
  ul.ant-select-dropdown-menu.ant-select-dropdown-menu-vertical.ant-select-dropdown-menu-root {
    display: flex;
    width: 95%;
    margin: 10px auto;
    flex-wrap: wrap;
  }

  li.ant-select-dropdown-menu-item {
    box-sizing: border-box;
    margin: 0;
    color: rgba(0, 0, 0, 0.65);
    font-size: 14px;
    font-variant: tabular-nums;
    line-height: 1.5;
    list-style: none;
    font-feature-settings: 'tnum', "tnum";
    display: inline-block;
    height: auto;
    margin-right: 8px;
    padding: 0 7px;
    font-size: 12px;
    white-space: nowrap;
    background: #fafafa;
    border: 1px solid #d9d9d9;
    border-radius: 4px;
    cursor: default;
    opacity: 1;
    transition: all 0.3s cubic-bezier(0.78, 0.14, 0.15, 0.86);
    background: transparent;
    color: black;
    border: 1px solid black;
    padding: 0px 5px;
    margin-right: 5px;
    margin-bottom: 5px;
    height: 27px;
    line-height: 27px;
  }
  li.ant-select-dropdown-menu-item.ant-select-dropdown-menu-item-selected {
    background: black !important;
    color: white;
    padding-right: 5px !important;
    svg {
      display: none;
    }
  }
  //End css dropdown tag

  // Css Ant Card
  .card-insight-list {
    .ant-card-body, .ant-card-head {
      padding: 0px;
    }
  }

  .card-insight-list.ant-card.ant-card-bordered {
    border: none;
  }

  .search_box {
    margin-top: 20px;
  }
  // End Css Ant Card
  span.ant-table-column-title {
    font-weight: bold;
  }
  span.ant-table-column-title {
    font-weight: bold;
  }
  .ant-collapse-header {
    font-size: 18px;
  }
  .ant-table-header-column {
    color: #000000;
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 700;
    font-size: 16px;
    line-height: 16px;
  }
  // css antd table

  .ant-table-thead > tr > th {
    color: rgba(0, 0, 0, 0.85);
    font-weight: 500;
    text-align: left;
    background: transparent;
    border: none;
    /* border-bottom: 1px solid #e8e8e8; */
    transition: background 0.3s ease;
  }
  .ant-table table {
    border: none;
    border-spacing: 0 5px;
  }

  .ant-table-tbody > tr > td {
    border-bottom: 1px solid #e8e8e8;
    border-top: 1px solid #e8e8e8;
    transition: background 0.3s;
  }
  .ant-table-tbody > tr > td:first-child {
    border: 1px solid #e8e8e8;
    border-right: none;
    border-radius: 5px 0px 0px 5px;
  }
  .ant-table-tbody > tr > td:last-child {
    border: 1px solid #e8e8e8;
    border-left: none;
    border-radius: 0px 5px 5px 0px;
  }

  element.style {
    text-align: center;
  }
  .ant-table-thead > tr > th .ant-table-header-column .ant-table-column-sorters::before {
    background: none;
  }
  .ant-table-thead > tr.ant-table-row-hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) > td, .ant-table-tbody > tr.ant-table-row-hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) > td, .ant-table-thead > tr:hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) > td, .ant-table-tbody > tr:hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) {
    box-shadow: 0 4px 24px #1f1f1f29;
    transition: box-shadow .2s,-webkit-box-shadow .2s;
  }
  .ant-table-thead > tr.ant-table-row-hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) > td, .ant-table-tbody > tr.ant-table-row-hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) > td, .ant-table-thead > tr:hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) > td, .ant-table-tbody > tr:hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) > td {
    background: transparent !important;
    cursor: pointer;
  }
  .ant-table-thead > tr > th.ant-table-column-has-actions.ant-table-column-has-sorters:hover {
    background: none;
  }
  tr.ant-table-row.ant-table-row-level-0.selected td {
    border: 2px solid;
  }
  .ant-rate-star-zero .ant-rate-star-second {
    color: #888888;
  }
  // end antd table
  .ant-table-tbody > tr > td.ant-table-column-sort {
    background: none;
  }
  div[title='Sort'] {
    pointer-events: none;
  }
}
.full-name {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 22px;
  color: #000000;
}
.user-name {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 22px;
  a {
    color: #8d6bf7 !important;
  }
}
.follow {
  font-family: 'Noto Sans JP';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 23px;
  color: #737373;
}
.insight-title {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 700;
  font-size: 32px;
  line-height: 32px;
  color: #000000;
  padding-bottom: 60px;
}
.title-heavy {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 700;
  font-size: 18px;
  line-height: 18px;
  color: #000000;
}
.title-light {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 16px;
  color: #000000;
}
.font-weight-500 {
  font-weight: 500 !important;
}
.avatar {
  width: 30px;
  height: 30px;
  border-radius: 50%;
}
.btn_wrapper{
  margin-top:4px;
}
.btn_db {
  width: 99px;
  height: 35px;
  border-radius: 0px !important;
}
</style>
