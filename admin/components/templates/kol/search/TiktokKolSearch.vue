<template>
  <div class="card-container">
    <a-card class="mb-4 card-container">
      <a-form-model
        ref="form"
        layout="inline"
        :colon="false"
        :label-col="{ sm: 14 }"
        :model="filters"
        label-align="left"
        :wrapper-col="{ sm: 24 }"
        class="mb-4"
        @submit.prevent="search"
      >
        <div class="search-kol-header">
          <span class="search-kol-header_heavy">
            {{ SEARCH_BY_KOL_BAR_HEAVY }}
          </span>
          <span class="search-kol-header_light">
            {{ SEARCH_BY_KOL_BAR_LIGHT }}
          </span>
        </div>

        <a-row>
          <a-col
            :md="5"
            :lg="12"
            :xl="5"
            :xxl="5"
          >
            <a-col :md="12" :sm="8">
              <a-form-model-item
                prop="followers_count"
                :label-col="{ sm: 24}"
                :wrapper-col="{ sm: 24}"
                class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
              >
                <div class="label">
                  {{ $t('kol.search_youtube_subscribers') }}
                </div>
                <a-select
                  id="followers_count"
                  v-model="filters.subscribers_count.from"
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
                prop="followers_count"
                :label-col="{ sm: 24}"
                :wrapper-col="{ sm: 24}"
                class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24 max-follow"
              >
                <a-select
                  id="followers_count"
                  v-model="filters.subscribers_count.to"
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

          <a-col
            :md="8"
            :lg="12"
            :xl="8"
            :xxl="8"
          >
            <a-col :md="12" :sm="8">
              <a-form-model-item
                prop="views_count"
                :label-col="{ sm: 24}"
                :wrapper-col="{ sm: 24}"
                class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
              >
                <div class="label">
                  {{ $t('kol.search_youtube_avg_views') }}
                </div>
                <a-select
                  id="views_count"
                  v-model="filters.views_avg.from"
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
                prop="followers_count"
                :label-col="{ sm: 24}"
                :wrapper-col="{ sm: 24}"
                class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24 max-follow"
              >
                <a-select
                  id="followers_count"
                  v-model="filters.views_avg.to"
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

          <a-col
            :md="5"
            :lg="6"
            :xl="5"
            :xxl="5"
          >
            <a-form-model-item
              prop="gender"
              class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
            >
              <div class="label">
                {{ $t('kol.search_youtube_gender') }}
              </div>
              <a-select
                id="gender"
                v-model="filters.account_gender"
                allow-clear
              >
                <a-select-option
                  v-for="(item, index) in GENDER_OPTION"
                  :key="index"
                  :value="item.value"
                >
                  {{ item.label }}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>
          <a-col
            :md="6"
            :lg="6"
            :xl="6"
            :xxl="6"
          >
            <a-form-model-item
              prop="last_post_time"
              class="ant-col-md-24"
            >
              <div class="label_wrapper">
                <label for="last_post_time">{{ $t('kol.last_post_time') }} </label>
                <a-tooltip>
                  <template slot="title">
                    {{ LAST_POST_TIME_INFO }}
                  </template>
                  <img
                    src="~/static/images/Info.png"
                    alt="Info"
                  />
                </a-tooltip>
              </div>
              <a-select
                id="last_post_time"
                v-model="filters.last_media_time"
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
        </a-row>
        <!------------------------------------search one---------------------->
        <a-row class="pt-4">
          <a-col
            :md="5"
            :lg="10"
            :xl="5"
            :xxl="5"
          >
            <a-form-model-item
              prop="engagement"
              class="ant-col-md-24"
            >
              <div class="label_wrapper">
                <label for="engagement">{{ $t('kol.search_youtube_engagement') }} </label>
                <a-tooltip>
                  <template slot="title">
                    {{ ENGAGEMENT_INFO_YOUTUBE_TIKTOK }}
                  </template>
                  <img
                    src="~/static/images/Info.png"
                    alt="Info"
                  />
                </a-tooltip>
              </div>
              <a-select
                id="engagement"
                v-model="filters.er.from"
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
          <a-col
            :md="5"
            :lg="10"
            :xl="5"
            :xxl="5"
          >
            <a-form-model-item
              prop="contact"
              class="ant-col-md-24"
            >
              <div class="label_wrapper">
                <label for="contact">{{ $t('kol.contact') }} </label>
                <a-tooltip>
                  <template slot="title">
                    {{ CONTACT_INFO }}
                  </template>
                  <img
                    src="~/static/images/Info.png"
                    alt="Info"
                  />
                </a-tooltip>
              </div>
              <a-select
                id="contact"
                v-model="filters.account_has_contacts"
                allow-clear
              >
                <a-select-option
                  v-for="(item, index) in CONTACT"
                  :key="index"
                  :value="item.value"
                  allow-clear
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
            <a-form-model-item
              prop="exclude_campaign_list"
              class="ant-col-md-24"
            >
              <div class="label_wrapper">
                <label for="exclude_campaign_list">{{ $t('kol.exclude_campaign_list') }} </label>
                <a-tooltip>
                  <template slot="title">
                    {{ EXCLUDE_CAMPAIGN_LIST_INFO }}
                  </template>
                  <img
                    src="~/static/images/Info.png"
                    alt="Info"
                  />
                </a-tooltip>
              </div>
              <a-select
                id="exclude_campaign_list"
                v-model="filters.campaigns"
                allow-clear
                mode="multiple"
              >
                <a-select-option
                  v-for="campaign in dataCampaign"
                  :key="campaign.id"
                  :value="campaign.id"
                >
                  {{ campaign.name }}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>
          <a-col
            :md="6"
            :lg="12"
            :xl="6"
            :xxl="6"
          >
            <a-form-model-item
              prop="keyword"
              class="ant-col-md-24"
            >
              <div class="label_wrapper">
                <label for="keyword">{{ $t('kol.keyword') }} </label>
                <a-tooltip>
                  <template slot="title">
                    {{ KEYWORD_INFO }}
                  </template>
                  <img
                    src="~/static/images/Info.png"
                    alt="Info"
                  />
                </a-tooltip>
              </div>
              <a-input
                v-model="filters.keyword"
                placeholder="keyword"
                allow-clear
                @change="getKeywords"
              />
            </a-form-model-item>
          </a-col>
        </a-row>
        <a-row class="pt-4">
          <a-col
            :md="5"
            :lg="12"
            :xl="5"
            :xxl="5"
          >
            <a-form-model-item
              prop="profile"
              class="ant-col-md-24"
            >
              <div class="label_wrapper">
                <label for="profile">{{ $t('kol.profile') }} </label>
                <a-tooltip>
                  <template slot="title">
                    {{ PROFILE_INFO }}
                  </template>
                  <img
                    src="~/static/images/Info.png"
                    alt="Info"
                  />
                </a-tooltip>
              </div>
              <a-input
                id="profile"
                v-model="filters.profile"
                placeholder="Any"
                allow-clear
                @change="getKeywords"
              />
            </a-form-model-item>
          </a-col>
        </a-row>
        <a-divider />
        <div class="search-kol-header">
          <span class="search-kol-header_heavy">
            {{ SEARCH_BY_FOLLWERS_BAR_HEAVY }}
          </span>
          <span class="search-kol-header_light">
            {{ SEARCH_BY_FOLLWERS_BAR_LIGHT }}
          </span>
        </div>
        <a-row>
          <a-col
            :md="4"
            :lg="10"
            :xl="4"
            :xxl="4"
          >
            <a-form-model-item
              class="ant-col-md-24"
            >
              <div class="label">
                {{ $t('kol.gender') }}
              </div>
              <a-select
                id="follower_gender"
                v-model="filters.audience_gender.gender"
                allow-clear
              >
                <a-select-option
                  v-for="(item, index) in GENDER_OPTION"
                  :key="index"
                  :value="item.value"
                >
                  {{ item.label }}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>
          <a-col
            :md="6"
            :lg="14"
            :xl="6"
            :xxl="6"
          >
            <a-form-model-item
              prop="age"
              class="ant-col-md-24"
            >
              <div class="label">
                {{ $t('kol.age') }}
              </div>
              <a-select
                id="age"
                v-model="audience_age"
                :show-arrow="true"
                mode="multiple"
                allow-clear
              >
                <a-select-option
                  v-for="(item, index) in AGES"
                  :key="index"
                  :value="item.value"
                >
                  {{ item.label }}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>
        </a-row>
        <a-divider />
        <div class="username-search">
          <span class="username-search_heavy">
            {{ SEARCH_BY_USERNAME_BAR_HEAVY }}
          </span>
          <span class="username-search_light">
            {{ SEARCH_BY_USERNAME_BAR_LIGHT }}
          </span>
        </div>
        <a-row>
          <a-col
            :md="24"
            :span="20"
          >
            <a-form-model-item
              class="ant-col-md-24"
            >
              <a-select
                v-model="usernames"
                mode="multiple"
                size="large"
                allow-clear
                placeholder="@username"
                :not-found-content="fetching ? undefined : null"
                :show-arrow="true"
                :filter-option="false"
                @search="suggest"
                @change="handleChange"
              >
                <a-spin v-if="fetching" slot="notFoundContent" size="small" style="display: inline-block; margin: 10px auto " />
                <a-select-option v-for="(user, index) in optionUsername" :key="index" :value="user.title">
                  <span role="img" :aria-label="user.title">
                    <img :src="user.avatar_url" alt="" class="avatar" />
                  </span>
                  {{ user.title }}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>
          <a-col
            :md="24"
            class="search-button"
          >
            <div>
              <input
                id="file"
                ref="fileupload"
                type="file"
                accept=".csv"
                hidden
                @change="handleFileUpload"
              />
              <span class="input-file" @click="onInput">
                {{ $t('kol.file_input') }}
              </span>
              <a-tooltip>
                <template slot="title">
                  {{ $t('kol.input_file_tooltip') }}
                </template>
                <a-icon type="info-circle" />
              </a-tooltip>
            </div>
            <div class="btn_wrapper">
              <a-button
                html-type="button"
                type="danger"
                ghost
                @click="reset"
              >
                <a-icon type="close" />
                {{ $t('common.delete') }}
              </a-button>
            &nbsp;
              <a-button
                html-type="submit"
                type="primary"
              >
                <font-awesome-icon
                  icon="search"
                  class="mr-1"
                />
                {{ $t('common.search') }}
              </a-button>
            </div>
          </a-col>
        </a-row>
      </a-form-model>
      <!-- end main-search -->
      <div
        v-if="!dataKolFromHypeAuditor"
        class="empty-result"
      >
        {{ $t('kol.empty_result') }}
      </div>
      <div v-else>
        <div class="search-result mb-1 mt-5">
          <div :data-soure="metaKolFromHypeAuditor" class="font-weight-500">
            {{ numberWithCommas(metaKolFromHypeAuditor.total_search_items) }} {{ $t('kol.account') }}
          </div>
          <div class="register-15-kols">
            <a
              class="register-kols"
              @click="showModalRegisterKol()"
            >
              {{ $t('kol.register_15_kols') }}
            </a>
          </div>
        </div>
        <a-modal
          ref="detail"
          :visible="visible"
          :width="400"
          :footer="null"
          @cancel="visible = false"
        >
          <div class="single-register-title">
            {{ $t('kol.register') }}
          </div>
          <hr />
          <a-spin :spinning="loading">
            <RegisterKolForm
              :social-type="defaultParams.social_type"
              :kol-usernames="kolUsernames"
              :data-campaign="dataCampaign"
              @refresh-campaign="countKolInCampaign"
            />
          </a-spin>
        </a-modal>
        <!-- end search result -->
        <a-table
          class="ant-table-striped"
          :columns="columns"
          :data-source="dataKolFromHypeAuditor"
          :pagination="false"
          :loading="loading"
          :row-key="record => record.basic.username"
          :row-class-name="rowClassName"
          :custom-row="customRow"
          style="overflow: auto"
          @change="handleTableChange"
        >
          <template
            slot="avatar_url"
            slot-scope="text, record"
          >
            <img
              :src="record.basic && record.basic.avatar_url ? record.basic.avatar_url : getSrc('user.jpg')"
              alt="avatar"
              class="kol-avatar"
            />
          </template>
          <template
            slot="user_name"
            slot-scope="text, record"
          >
            <div class="mt-2">
              <span class="fullname-column font-weight-500">
                {{ record.basic.title }}
              </span>
            </div>
            <div>
              <a
                :href="TIKTOK_URL + record.basic.username"
                target="_blank"
                @click="tiktok_url_active = true"
              >
                <p class="kol-url">@{{ record.basic.username }}</p>
              </a>
            </div>
          </template>
          <template
            slot="subscribers_count"
            slot-scope="text, record"
          >
            <div>
              <span class="subscrible-column font-weight-500">
                {{ getNumber(record.metrics.subscribers_count) }}
              </span>
            </div>
            <div class="sub-bottom">
              {{ $t('kol.follower') }}
            </div>
          </template>
          <template
            slot="engagement"
            slot-scope="text, record"
          >
            <div>
              <span class="subscrible-column font-weight-500">
                {{ getNumber(record.metrics.engagement_count) }} ({{ getNumber(record.metrics.er) }})
              </span>
            </div>
            <div class="sub-bottom">
              {{ $t('kol.engagement') }}
            </div>
          </template>
          <template
            slot="hashtag"
            slot-scope="text, record"
          >
            <div>
              <a-tag
                v-for="(tag, index) in record.tags"
                :key="index"
                class="tag_inactive mb-2"
              >
                {{ tag }}
              </a-tag>
            </div>
          </template>
          <template
            slot="action"
            slot-scope="text, record"
          >
            <a-button
              :disabled="loading"
              ghost
              html-type="button"
              size="small"
              type="primary"
              @click="registerSingleKol(record.basic.username)"
            >
              <a-icon theme="filled" type="copy" />
              {{ $t('common.register') }}
            </a-button>
          </template>
        </a-table>
        <!-- end main-table -->
        <div id="ShortReportModal">
          <short-report-modal ref="ShortReportModal" :username="username" />
        </div>
        <a-col
          :md="24"
          class="text-center"
        >
          <a-button
            v-if="metaKolFromHypeAuditor.total_search_items > 20"
            class="min-w-100"
            html-type="button"
            type="primary"
            @click="onLoadMore"
          >
            Load
          </a-button>
        </a-col>
      </div>
      <!-- end modal-report -->
      <a-modal
        ref="detail"
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
            :social-type="defaultParams.social_type"
            :single="kolUsername"
            :data-campaign="dataCampaign"
            @refresh-campaign="countKolInCampaign"
          />
        </a-spin>
      </a-modal>
    </a-card>
  </div>
</template>
<script>

import debounce from 'lodash/debounce'
import RegisterKolForm from '~/components/templates/kol/RegisterKolForm.vue'
import ShortReportModal from '~/components/templates/kol/tiktok/ShortReportModal'
import DataKol from '~/mixins/data-kol'
import Common from '~/mixins/common'
import RegisterSingleKolModal from '~/components/templates/kol/RegisterSingleKolModal'

import {
  TIKTOK_URL,
  GENDER_OPTION,
  FOLLOWERS_MIN,
  FOLLOWERS_MAX,
  ENGAGERMENTS,
  LAST_POST_TIME,
  AGES,
  SEARCH_BY_KOL_BAR_HEAVY,
  SEARCH_BY_KOL_BAR_LIGHT,
  SEARCH_BY_FOLLWERS_BAR_HEAVY,
  SEARCH_BY_FOLLWERS_BAR_LIGHT,
  SEARCH_BY_USERNAME_BAR_HEAVY,
  SEARCH_BY_USERNAME_BAR_LIGHT,
  LAST_POST_TIME_INFO,
  PROFILE_INFO,
  CONTACT_INFO,
  EXCLUDE_CAMPAIGN_LIST_INFO,
  KEYWORD_INFO,
  CONTACT,
  ENGAGEMENT_INFO_YOUTUBE_TIKTOK
} from '~/constants'

export default {
  components: {
    RegisterKolForm,
    ShortReportModal,
    RegisterSingleKolModal
  },
  mixins: [
    DataKol,
    Common
  ],
  data() {
    this.lastFetchId = 0
    this.suggest = debounce(this.suggest, 800)

    return {
      tiktok_url_active: false,
      tiktok_username: '',
      resource: {
        kol: 'kol',
        campaign: 'campaign'
      },
      TIKTOK_URL,
      GENDER_OPTION,
      FOLLOWERS_MIN,
      FOLLOWERS_MAX,
      ENGAGERMENTS,
      LAST_POST_TIME,
      AGES,
      SEARCH_BY_KOL_BAR_HEAVY,
      SEARCH_BY_KOL_BAR_LIGHT,
      SEARCH_BY_FOLLWERS_BAR_HEAVY,
      SEARCH_BY_FOLLWERS_BAR_LIGHT,
      SEARCH_BY_USERNAME_BAR_HEAVY,
      SEARCH_BY_USERNAME_BAR_LIGHT,
      ENGAGEMENT_INFO_YOUTUBE_TIKTOK,
      LAST_POST_TIME_INFO,
      PROFILE_INFO,
      CONTACT_INFO,
      EXCLUDE_CAMPAIGN_LIST_INFO,
      KEYWORD_INFO,
      CONTACT,
      visible: false,
      register: false,
      kolUsername: '',
      currentId: 0,
      filters: {
        subscribers_count: {
          from: '',
          to: ''
        },
        views_avg: {
          from: '',
          to: ''
        },
        account_gender: '',
        last_media_time: '',
        er: {
          from: ''
        },
        account_has_contacts: '',
        keywords: [],
        audience_gender: {
          gender: ''
        },
        audience_age: {
          groups: []
        },
        campaigns: [],
        keyword: this.$route.query.keyword ? JSON.parse(this.$route.query.keyword) : '',
        profile: this.$route.query.profile ? JSON.parse(this.$route.query.profile) : ''
      },
      defaultParams: {
        not_admin: 1,
        social_type: 3
      },
      keyword: '',
      profile: '',
      usernames: [],
      kolUsernames: [],
      optionUsername: [],
      fetching: false,
      audience_age: [],
      dataCampaign: []
    }
  },
  computed: {
    header() {
      return [
        {
          scopedSlots: { customRender: 'avatar_url' },
          width: 150
        },
        {
          scopedSlots: { customRender: 'user_name' }
        },
        {
          title: this.$t('kol.followers_count'),
          dataIndex: 'subscribers_count',
          scopedSlots: { customRender: 'subscribers_count' },
          sortDirections: ['ascend', 'descend', 'ascend'],
          sorter: true,
          width: 290
        },
        {
          title: this.$t('kol.engagement'),
          dataIndex: 'er',
          scopedSlots: { customRender: 'engagement' },
          sorter: true,
          sortDirections: ['ascend', 'descend', 'ascend'],
          width: 310
        },
        {
          title: this.$t('kol.hashtag'),
          scopedSlots: { customRender: 'hashtag' },
          width: 350
        },
        {
          dataIndex: 'action',
          scopedSlots: { customRender: 'action' }
        }
      ]
    }
  },
  created() {
    if (this.$route.query.is_submit) {
      delete this.$route.query.is_submit
    }
  },
  methods: {
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
     * Open modal short report
     *
     * @param {Object} record
     */
    customRow(record) {
      return {
        on: {
          click: () => {
            if (this.register === false && this.tiktok_url_active === false) {
              this.shortReport(record.basic.username)
            } else {
              this.tiktok_url_active = false
            }
          }
        }
      }
    },
    /**
     * Count total kols in campaign
     */
    async countKolInCampaign() {
      const res = await this.repository.campaign.listCampaignActive({ params: { social_type: this.$route.query.social_type } })
      this.dataCampaign = res.data.result.data
    },
    /**
     * Open modal short report
     *
     * @param {String} username
     */
    shortReport(username) {
      if (username) {
        this.tiktok_username = username
        this.$refs.ShortReportModal.open()
        this.$refs.ShortReportModal.getReport(this.tiktok_username)
      }
    },
    /**
     * Load more data from HypeAuditor
     */
    onLoadMore() {
      const nextPage = this.metaKolFromHypeAuditor.current_page + 1
      this.replaceQuery({ page: nextPage })
    },
    /**
     * Set table class
     *
     * @param {array} record - data kol
     */
    rowClassName(record) {
      if (typeof record.disable !== 'undefined' && record.disable) {
        return 'disabled-row'
      } else {
        return null
      }
    },
    /**
     * Click on input file
     */
    onInput() {
      document.getElementById('file').click()
    },

    /**
     * Handle file upload
     *
     * @param e - target file
     */
    handleFileUpload(e) {
      const file = e.target.files[0]
      if (file) {
        const reader = new FileReader()
        reader.onload = () => {
          const text = reader.result.split('\r\n')
          for (const i in text) {
            text[i] = text[i].split(',')
          }
          const data = []
          for (let j = 0; j < text.length - 1; j++) {
            data.push(text[j].toString())
          }
          this.usernames = data ?? []
          this.$refs.fileupload.value = null
        }
        reader.readAsText(file)
      }
    },

    /**
     * Get keywords data
     */
    getKeywords() {
      this.filters.keywords = [
        this.filters.keyword,
        this.filters.profile
      ]
    },

    /**
     * Filter option
     *
     * @param  {string} input  - search input
     * @param  {string} option - option select
     * @return {string}
     */

    filterOption(input, option) {
      return (
        option.componentOptions.children[0].text.toLowerCase().indexOf(input.toLowerCase()) > 0
      )
    },

    /**
     * Show modal register kols in campaigns
     */
    showModalRegisterKol() {
      this.visible = true
      this.kolUsernames = this.getUsernameKolToRegister()
    },

    /**
     * Show modal register only 1  kol to campaigns
     */
    registerSingleKol(username) {
      this.register = true
      this.kolUsername = username
    },

    /**
     * Close dialog
     *
     * @param  {boolean} fetch - fetch status
     */
    closeDialog(fetch) {
      this.visible = false
      if (fetch) {
        this.$fetch()
      }
    },

    /**
     * On clear form search
     */
    reset() {
      this.filters = {
        subscribers_count: {
          from: '',
          to: ''
        },
        views_avg: {
          from: '',
          to: ''
        },
        account_gender: '',
        last_media_time: '',
        er: {
          from: ''
        },
        account_has_contacts: '',
        keywords: [],
        audience_gender: {
          gender: ''
        },
        audience_age: {
          groups: []
        },
        campaigns: [],
        profile: '',
        keyword: '',
        usernames: []
      }
      this.usernames = []
      this.audience_age = []
    },

    /**
     * Search data
     */
    search() {
      if (this.$route.query.page) {
        this.$route.query.page = undefined
      }
      if (this.usernames.length !== 0) {
        this.filters.keywords = []
        this.filters.keywords.push(...this.usernames)
      }
      if (this.audience_age) {
        this.filters.audience_age.groups = [...this.audience_age]
        this.filters.audience_age.groups.map(item => {
          if (Array.isArray(item)) {
            item.map(value => {
              this.filters.audience_age.groups.push(value)
            })
            this.filters.audience_age.groups.splice(this.filters.audience_age.groups.indexOf(item), 1)
          }
        })
      }
      this.filters.is_submit = true
      this.replaceQuery(this.filters)
    },

    /**
     * Suggest username
     */
    async suggest(value) {
      try {
        this.lastFetchId += 1
        this.optionUsername = []
        this.fetching = true
        const params = {
          search: value,
          st: 'tiktok'
        }
        const { data: { result: { data } } } = await this.$api.kol.usernameSuggest({ params })
        const userSearchList = data.map(user => ({
          username: user.username,
          title: user.title,
          avatar_url: user.avatar_url,
          user_id: user.user_id
        }))
        this.optionUsername = userSearchList
      } catch (_) {
      } finally {
        this.fetching = false
      }
    },
    handleChange(value) {
      Object.assign(this, {
        value,
        optionUsername: [],
        fetching: false
      })
    }
  }
}
</script>
<style lang="scss" scoped>
.input-file {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 13px;
  line-height: 13px;
  text-decoration: underline;
  color:#0099ff;
  padding-left: 29px;
  display: inline-block;
}
.option-avatar {
  width: 20px;
  height: 20px;
  border-radius: 50%;
}

.input-file:hover {
  cursor: pointer;
}

.max-follow {
  margin-top: 23px;
}

.kol-url {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 22px;
  color: #1890FF !important;
}

.kol-avatar {
  border-radius: 50%;
  width: 65px;
  height: 65px;
  object-fit: cover;
}

.search-result {
  display: flex;
  justify-content: space-between;
}

.search-button {
  display: flex;
  justify-content: space-between;
}

.fullname-column {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 22px;
  color: #000000;
}

.subscrible-column {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  font-size: 20px;
  line-height: 27px;
  color: #000000;
}

.sub-bottom {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 23px;
  color: #737373;
}

.register-kols {
  text-decoration: underline;
}

.p-3 {
  color:#000;
}

.empty-result {
  text-align: center;
}

.register-15-kols {
  text-align: right;
}

.card-container {
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
.search-kol-header {
  margin-bottom: 31px;
}
.search-kol-header_heavy {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 700;
  font-size: 18px;
  line-height: 18px;
  color: #000000;
}

.search-kol-header_light {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 16px;
  color: #000000;
}

.username-search {
  margin-bottom: 20px;
}
.username-search_heavy {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 700;
  font-size: 18px;
  line-height: 18px;
  color: #000000;
}

.username-search_light {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 16px;
  color: #000000;
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

.label {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 23px;
  color: #000000;
}

.label_wrapper {
  height: 23px;
  line-height: 23px;
  label {
    font-size: 16px;
    color: black;
  }
  img {
    margin-bottom: 4px;
  }
}
.ant-table-striped :deep(.disabled-row) td {
    pointer-events: none;
    background-color: #c2c7cf;
}
.avatar {
  width: 30px;
  height: 30px;
  border-radius: 50%;
}

/deep/ {
  .ant-modal-close-x {
    color: #000000;
    font-size: 17px ;
  }
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
.ant-table-thead > tr > th.ant-table-column-has-actions.ant-table-column-has-sorters:hover {
  background: none;
}
.ant-table-thead > tr > th .ant-table-header-column .ant-table-column-sorters:hover::before {
  background: none;
}
  .ant-table-thead > tr.ant-table-row-hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) > td, .ant-table-tbody > tr.ant-table-row-hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) > td, .ant-table-thead > tr:hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) > td, .ant-table-tbody > tr:hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) > td {
    background: transparent !important;
    cursor: pointer;
  }
  .ant-table-thead > tr.ant-table-row-hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) > td, .ant-table-tbody > tr.ant-table-row-hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) > td, .ant-table-thead > tr:hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) > td, .ant-table-tbody > tr:hover:not(.ant-table-expanded-row):not(.ant-table-row-selected) {
    box-shadow: 0 4px 24px #1f1f1f29;
    transition: box-shadow .2s,-webkit-box-shadow .2s;
  }
  .ant-table-tbody > tr > td.ant-table-column-sort {
    background: none;
  }
  div[title='Sort'] {
    pointer-events: none;
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

  .font-weight-500 {
    font-weight: 500 !important;
    color: #111111;
  }
  .ant-select-selection.ant-select-selection--single, .ant-select-selection--multiple, .ant-input {
    min-height: 38px;
    background: #FAFAFA;
    border: 1px solid #C0C0C0;
    border-radius: 4px;
    ::placeholder {
      font-style: normal;
      font-family: 'BIZ UDGothic';
      font-weight: 400;
      font-size: 13px;
      line-height: 18px;
      color: #C0C0C0;
    }
  }
  .ant-select-selection--multiple .ant-select-selection__placeholder {
    padding-top: 3px;
  }
  .ant-select-selection--single .ant-select-selection__rendered {
    margin-right: 24px;
    min-height: 38px;
  }
  .ant-select-selection-selected-value {
    height: 38px;
    line-height: 38px;
  }
  .ant-input {
    margin-top: 4.15px;
    height: 38px;
  }
  .btn_wrapper .ant-btn {
    height: 35px;
    border-radius: 3px;
    margin-top: 10px;
  }
  .ant-table-header-column {
    color: #000000;
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 700;
    font-size: 16px;
    line-height: 16px;
  }

  .text-center {
    margin-top: 27px;
  }
  .ant-select-arrow {
      top: 20px;
  }
}
</style>
