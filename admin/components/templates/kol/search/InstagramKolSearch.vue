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
            :md="8"
            :lg="16"
            :xl="8"
            :xxl="8"
            :span="20"
          >
            <a-col :md="12" :sm="8">
              <a-form-model-item
                prop="followers_count"
                :label-col="{ sm: 24 }"
                :wrapper-col="{ sm: 24 }"
                class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
              >
                <div class="label">
                  {{ $t('kol.followers_count') }}
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
                :label-col="{ sm: 24 }"
                :wrapper-col="{ sm: 24 }"
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
            :md="3"
            :lg="8"
            :xl="3"
            :xxl="3"
          >
            <a-form-model-item
              prop="gender"
              class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
            >
              <div class="label">
                {{ $t('kol.gender') }}
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
            :md="8"
            :span="20"
          >
            <a-form-model-item
              prop="engagement"
              class="ant-col-md-24"
            >
              <div class="label_wrapper">
                <label for="engagement">{{ $t('kol.engagement') }} </label>
                <a-tooltip>
                  <template slot="title">
                    {{ ENGAGEMENT_INFO }}
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
            :lg="7"
            :xl="5"
            :xxl="5"
            :span="20"
          >
            <a-form-model-item
              prop="account_type"
              class="ant-col-md-24"
            >
              <div class="label_wrapper">
                <label for="account_type">{{ $t('kol.account_type') }} </label>
                <a-tooltip>
                  <template slot="title">
                    {{ ACCOUNT_TYPE_INFO }}
                  </template>
                  <img
                    src="~/static/images/Info.png"
                    alt="Info"
                  />
                </a-tooltip>
              </div>
              <a-select
                id="account_type"
                v-model="filters.account_type"
                allow-clear
              >
                <a-select-option
                  v-for="(item, index) in ACCOUNT_TYPE"
                  :key="index"
                  :value="item.value"
                >
                  {{ item.label }}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>
        </a-row>
        <a-row>
          <a-col
            :md="4"
            :lg="12"
            :xl="4"
            :xxl="4"
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
                  v-for="item in LAST_POST_TIME"
                  :key="item.value"
                  :value="item.value"
                >
                  {{ item.label }}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>
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
                placeholder="description"
                allow-clear
                @change="getKeywords"
              />
            </a-form-model-item>
          </a-col>

          <a-col
            :md="4"
            :lg="8"
            :xl="4"
            :xxl="4"
            :span="20"
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
            :md="4"
            :lg="8"
            :xl="4"
            :xxl="4"
          >
            <a-form-model-item
              prop="topic"
              :label-col="{ sm: 24 }"
              :wrapper-col="{ sm: 24 }"
              class="ant-col-md-24 ant-col-sm-24 ant-col-xs-24"
            >
              <div class="label">
                {{ $t('kol.topic') }}
              </div>
              <a-select
                id="topic"
                v-model="filters.category.include"
                allow-clear
                show-search
                placeholder="#topics"
                option-filter-prop="children"
                :filter-option="filterOption"
                mode="multiple"
              >
                <a-select-option
                  v-for="category in CATEGORY_AND_INTEREST"
                  :key="category.id"
                  :value="category.id"
                  allow-clear
                >
                  {{ category.label }}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>
          <a-col
            :md="7"
            :lg="8"
            :xl="7"
            :xxl="7"
          >
            <a-form-model-item
              prop="hashtag"
              class="ant-col-md-24"
            >
              <div class="label_wrapper">
                <label for="hashtag">{{ $t('kol.hashtag_filter') }} </label>
                <a-tooltip>
                  <template slot="title">
                    {{ HASHTAG_INFO }}
                  </template>
                  <img
                    src="~/static/images/Info.png"
                    alt="Info"
                  />
                </a-tooltip>
              </div>
              <a-input
                id="hashtag"
                v-model="filters.hashtag"
                placeholder="#hashtag"
                allow-clear
                @change="getKeywords"
              />
            </a-form-model-item>
          </a-col>
        </a-row>
        <a-row>
          <a-col
            :md="7"
            :span="20"
          >
            <a-form-model-item
              prop="mention"
              class="ant-col-md-24"
            >
              <div class="label_wrapper">
                <label for="mention">{{ $t('kol.mention') }} </label>
                <a-tooltip>
                  <template slot="title">
                    {{ MENTION_INFO }}
                  </template>
                  <img
                    src="~/static/images/Info.png"
                    alt="Info"
                  />
                </a-tooltip>
              </div>
              <a-input
                v-model="account_mentions"
                allow-clear
                placeholder="@username"
              />
            </a-form-model-item>
          </a-col>
          <a-col
            :md="9"
            :span="20"
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
                v-model="filters.campaign"
                allow-clear
              >
                <a-select-option
                  v-for="campaign in dataCampaign"
                  :key="campaign.name"
                  :value="campaign.id"
                >
                  {{ campaign.name }}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>
          <a-col
            :md="8"
            :span="20"
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
            :md="7"
            :span="20"
          >
            <a-form-model-item
              prop="area"
              class="ant-col-md-24"
            >
              <div class="label">
                {{ $t('kol.area') }}
              </div>
              <a-select
                id="area"
                v-model="idCity"
                :show-arrow="true"
                mode="multiple"
                allow-clear
                @change="getIdCity(idCity)"
              >
                <a-select-option
                  v-for="(item, index) in AREAS"
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
            :span="20"
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
            :md="5"
            :span="20"
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
          <a-col
            :md="8"
            :span="20"
          >
            <a-form-model-item
              prop="interest"
              class="ant-col-md-24"
            >
              <div class="label_wrapper">
                <label for="interest">{{ $t('kol.interest') }} </label>
                <a-tooltip>
                  <template slot="title">
                    {{ INTEREST_INFO }}
                  </template>
                  <img
                    src="~/static/images/Info.png"
                    alt="Info"
                  />
                </a-tooltip>
              </div>
              <a-select
                id="interest"
                v-model="idInterest"
                :show-arrow="true"
                allow-clear
                show-search
                option-filter-prop="children"
                :filter-option="filterOption"
                mode="multiple"
                @change="getIdInterest(idInterest)"
              >
                <a-select-option
                  v-for="interest in CATEGORY_AND_INTEREST"
                  :key="interest.value"
                  :value="interest.id"
                >
                  {{ interest.label }}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>
        </a-row>
        <a-row>
          <a-col
            :md="8"
            :span="20"
          >
            <a-form-model-item
              prop="active_rate"
              class="ant-col-md-24"
            >
              <div class="label_wrapper">
                <label for="active_rate">{{ $t('kol.active_rate') }} </label>
                <a-tooltip>
                  <template slot="title">
                    {{ $t('kol.active_rate_info') }}
                  </template>
                  <img
                    src="~/static/images/Info.png"
                    alt="Info"
                  />
                </a-tooltip>
              </div>
              <a-select
                id="active_rate"
                v-model="filters.aqs.from"
                allow-clear
              >
                <a-select-option
                  v-for="(item, index) in ACTIVE_RATE"
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
                v-model="filters.usernames"
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
          style="overflow-x: auto"
          @change="handleTableChange"
        >
          <template
            slot="avatar_url"
            slot-scope="text, record"
          >
            <img
              :src="record.basic.avatar_url"
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
                :href="INSTAGRAM_URL + record.basic.username"
                target="_blank"
                @click="instagram_url_active = true"
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
import RegisterKolForm from '~/components/templates/kol/RegisterKolForm'
import ShortReportModal from '~/components/templates/kol/ShortReportModal'
import DataKol from '~/mixins/data-kol'
import Common from '~/mixins/common'
import RegisterSingleKolModal from '~/components/templates/kol/RegisterSingleKolModal'

import {
  INSTAGRAM_URL,
  GENDER_OPTION,
  ACCOUNT_TYPE,
  ACTIVE_RATE,
  FOLLOWERS_MIN,
  FOLLOWERS_MAX,
  ENGAGERMENTS,
  LAST_POST_TIME,
  AGES,
  AREAS,
  IG_KOL_SEARCH_SUBTITLE,
  SEARCH_BY_KOL_BAR_HEAVY,
  SEARCH_BY_KOL_BAR_LIGHT,
  SEARCH_BY_FOLLWERS_BAR_HEAVY,
  SEARCH_BY_FOLLWERS_BAR_LIGHT,
  SEARCH_BY_USERNAME_BAR_HEAVY,
  SEARCH_BY_USERNAME_BAR_LIGHT,
  ENGAGEMENT_INFO,
  LAST_POST_TIME_INFO,
  PROFILE_INFO,
  CONTACT_INFO,
  HASHTAG_INFO,
  MENTION_INFO,
  EXCLUDE_CAMPAIGN_LIST_INFO,
  KEYWORD_INFO,
  INTEREST_INFO,
  KOL_SEARCH_TABLE_DESC,
  ACCOUNT_TYPE_INFO,
  CONTACT,
  CATEGORY_AND_INTEREST
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
      instagram_url_active: false,
      username: '',
      resource: {
        kol: 'kol',
        campaign: 'campaign'
      },
      INSTAGRAM_URL,
      CATEGORY_AND_INTEREST,
      GENDER_OPTION,
      ACCOUNT_TYPE,
      ACCOUNT_TYPE_INFO,
      FOLLOWERS_MIN,
      FOLLOWERS_MAX,
      ENGAGERMENTS,
      LAST_POST_TIME,
      AGES,
      AREAS,
      ACTIVE_RATE,
      SEARCH_BY_KOL_BAR_HEAVY,
      SEARCH_BY_KOL_BAR_LIGHT,
      SEARCH_BY_FOLLWERS_BAR_HEAVY,
      SEARCH_BY_FOLLWERS_BAR_LIGHT,
      SEARCH_BY_USERNAME_BAR_HEAVY,
      SEARCH_BY_USERNAME_BAR_LIGHT,
      IG_KOL_SEARCH_SUBTITLE,
      ENGAGEMENT_INFO,
      LAST_POST_TIME_INFO,
      PROFILE_INFO,
      CONTACT_INFO,
      HASHTAG_INFO,
      MENTION_INFO,
      EXCLUDE_CAMPAIGN_LIST_INFO,
      KEYWORD_INFO,
      INTEREST_INFO,
      KOL_SEARCH_TABLE_DESC,
      CONTACT,
      visible: false,
      register: false,
      kolUsername: '',
      currentId: 0,
      filters: {
        keywords: [],
        subscribers_count: {
          from: this.$route.query.subscribers_count ? JSON.parse(this.$route.query.subscribers_count).from : '',
          to: this.$route.query.subscribers_count ? JSON.parse(this.$route.query.subscribers_count).to : ''
        },
        er: {
          from: this.$route.query.er ? JSON.parse(this.$route.query.er).from : ''
        },
        account_mentions: {
          include: []
        },
        category: {
          include: this.$route.query.category ? JSON.parse(this.$route.query.category).include : []
        },
        audience_geo: {
          cities: []
        },
        audience_gender: {
          gender: this.$route.query.audience_gender ? JSON.parse(this.$route.query.audience_gender).gender : ''
        },
        audience_age: {
          groups: []
        },
        aqs: {
          from: this.$route.query.aqs ? JSON.parse(this.$route.query.aqs).from : ''
        },
        interests: [],
        campaign: this.$route.query.campaign ? JSON.parse(this.$route.query.campaign) : '',
        account_gender: this.$route.query.account_gender ? this.$route.query.account_gender : '',
        account_type: this.$route.query.account_type ? JSON.parse(this.$route.query.account_type) : '',
        last_media_time: this.$route.query.last_media_time ? this.$route.query.last_media_time : '',
        account_has_contacts: this.$route.query.account_has_contacts ? JSON.parse(this.$route.query.account_has_contacts) : '',
        profile: this.$route.query.profile ? JSON.parse(this.$route.query.profile) : '',
        keyword: this.$route.query.keyword ? JSON.parse(this.$route.query.keyword) : '',
        hashtag: this.$route.query.hashtag ? JSON.parse(this.$route.query.hashtag) : '',
        usernames: this.$route.query.usernames ? JSON.parse(this.$route.query.usernames) : []
      },
      defaultParams: {
        not_admin: 1,
        social_type: 1
      },
      idCity: this.$route.query.audience_geo ? JSON.parse(this.$route.query.audience_geo).cities.map(item => item.id) : undefined,
      idInterest: this.$route.query.interests ? JSON.parse(this.$route.query.interests).map(item => item.id) : undefined,
      kolUsernames: [],
      optionUsername: [],
      account_mentions: this.$route.query.account_mentions ? JSON.parse(this.$route.query.account_mentions).include : undefined,
      fetching: false,
      audience_age: this.$route.query.audience_age ? JSON.parse(this.$route.query.audience_age).groups : undefined
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
     * Open modal short report
     *
     * @param {Object} record
     */
    customRow(record) {
      return {
        on: {
          click: () => {
            if (this.register === false && this.instagram_url_active === false) {
              this.shortReport(record.basic.username)
            } else {
              this.instagram_url_active = false
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
        this.username = username
      }
      this.$refs.ShortReportModal.open()
      this.$refs.ShortReportModal.getReport(this.username)
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
          this.filters.usernames = data ?? []
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
        this.filters.profile,
        this.filters.hashtag,
        this.filters.keyword
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
     * Get id audience cities
     *
     * @param {array} idCity - id audience cities
     */
    getIdCity(idCity) {
      if (idCity.length < this.filters.audience_geo.cities.length) {
        this.filters.audience_geo.cities = []
      }
      for (let index = 0; index < idCity.length; index++) {
        this.filters.audience_geo.cities[index] = { id: idCity[index] }
      }
    },

    /**
     * Get id audience interests
     *
     * @param {array} idInterest - id audience interests
     */

    getIdInterest(idInterest) {
      if (idInterest.length < this.filters.interests.length) {
        this.filters.interests = []
      }
      for (let index = 0; index < idInterest.length; index++) {
        this.filters.interests[index] = { id: idInterest[index] }
      }
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
        keywords: [],
        subscribers_count: {
          from: '',
          to: ''
        },
        er: {
          from: ''
        },
        account_mentions: {
          include: []
        },
        category: {
          include: []
        },
        audience_geo: {
          cities: []
        },
        audience_gender: {
          gender: ''
        },
        audience_age: {
          groups: []
        },
        aqs: {
          from: ''
        },
        interests: [],
        campaign: '',
        account_gender: '',
        account_type: '',
        last_media_time: '',
        account_has_contacts: '',
        profile: '',
        keyword: '',
        hashtag: '',
        usernames: []
      }
      this.idCity = []
      this.idInterest = []
      this.account_mentions = ''
      this.audience_age = []
    },

    /**
     * Search data
     */
    search() {
      if (this.$route.query.page) {
        this.$route.query.page = undefined
      }
      if (this.filters.usernames.length !== 0) {
        this.filters.keywords = []
        this.filters.keywords.push(...this.filters.usernames)
      }
      if (this.account_mentions) {
        this.filters.account_mentions.include = [this.account_mentions]
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
          st: 'instagram'
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

.card-title {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 700;
  font-size: 32px;
  line-height: 32px;
  color: #000000;
}
.card-subtitle {
  margin-top: 16px;
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 20px;
  line-height: 20px;
  color: #000000;
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
.ant-table-striped {
  overflow-x: auto;
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
