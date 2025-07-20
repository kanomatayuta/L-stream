<template>
  <div id="tab-report" ref="tabReport" class="borer_report">
    <a-spin :spinning="loading">
      <div class="card-report-list">
        <a-row>
          <a-col
            :xs="24"
            :sm="24"
            :md="24"
            :lg="24"
            :xl="22"
          >
            <div class="padding__bottom-form">
              <a-row>
                <a-col
                  :xs="12"
                  :sm="12"
                  :md="16"
                  :lg="24"
                  :xl="14"
                  :span="24"
                >
                  <a-row class="form__date-picker">
                    <a-col
                      :xs="24"
                      :sm="24"
                      :md="24"
                      :lg="24"
                      :xl="24"
                      :span="24"
                    >
                      <a-row>
                        <a-col
                          :xs="24"
                          :sm="24"
                          :md="4"
                          :lg="5"
                          :xl="4"
                          :span="24"
                          class="pb-2"
                        >
                          <div class="time__font">
                            {{ $t('campaign_detail.time') }}
                          </div>
                        </a-col>
                        <a-col
                          :xs="24"
                          :sm="24"
                          :md="10"
                          :lg="8"
                          :xl="10"
                          :span="24"
                          class="pb-2"
                        >
                          <div class="date__picker">
                            <div class="time_absolute">
                              {{ $t('campaign_detail.start_date') }}
                            </div>
                            <a-date-picker
                              v-model="campaign.start_date"
                              :format="FORMAT_DATE_SLASH"
                              :placeholder="$t('campaign_detail.start_date')"
                              @change="updateStartDate(campaign.id, campaign.start_date)"
                            />
                          </div>
                        </a-col>
                        <a-col
                          :xs="24"
                          :sm="24"
                          :md="10"
                          :lg="8"
                          :xl="10"
                          :span="24"
                        >
                          <div class="date__picker">
                            <div class="time_absolute">
                              {{ $t('campaign_detail.end_date') }}
                            </div>
                            <a-date-picker
                              v-if="campaign.end_date"
                              v-model="campaign.end_date"
                              :format="FORMAT_DATE_SLASH"
                              :placeholder="$t('campaign_detail.end_date')"
                              @change="updateEndDate(campaign.id, campaign.end_date)"
                            />
                            <a-date-picker
                              v-else
                              v-model="endDate"
                              :format="FORMAT_DATE_SLASH"
                              :placeholder="$t('campaign_detail.end_date')"
                              @change="updateEndDate(campaign.id, endDate)"
                            />
                          </div>
                        </a-col>
                      </a-row>
                    </a-col>
                  </a-row>
                </a-col>
                <a-col
                  :xs="12"
                  :sm="12"
                  :md="8"
                  :lg="24"
                  :xl="10"
                  :span="24"
                >
                  <div>
                    <div class="pb-2 text-right">
                      <a-button
                        class="button_pdf"
                        @click="exportPDF()"
                      >
                        {{ $t('campaign_detail.pdf') }}
                      </a-button>
                    </div>
                    <div class="text-right">
                      <div class="pr-1">
                        {{ $t('campaign_detail.manual') }}
                      </div>
                      <a-switch
                        v-if="campaign.campaign_mode === 1"
                        :checked="checked"
                        class="switch__margin"
                        @click="checkMode(campaign.campaign_mode, campaign.id)"
                      />
                      <a-switch
                        v-if="campaign.campaign_mode === 0"
                        class="switch__margin"
                        @click="checkMode(campaign.campaign_mode, campaign.id)"
                      />
                      <div class="color-auto pl-1">
                        {{ $t('campaign_detail.auto') }}
                      </div>
                    </div>
                  </div>
                </a-col>
              </a-row>
            </div>
            <a-form-model
              ref="form"
              :model="model"
              layout="inline"
              label-align="left"
              :colon="false"
              class="form__input form__input--title"
            >
              <a-row>
                <a-col
                  :xs="0"
                  :sm="0"
                  :md="0"
                  :lg="0"
                  :xl="2"
                  :span="24"
                />
                <a-col
                  :xs="24"
                  :sm="24"
                  :md="24"
                  :lg="24"
                  :xl="22"
                  :span="24"
                >
                  <a-row
                    class="form__margin"
                  >
                    <a-col
                      :xs="24"
                      :sm="12"
                      :md="8"
                      :lg="6"
                      :xl="3"
                      :span="24"
                    >
                      <a-form-model-item
                        prop="cost"
                        :label-col="{ sm: 24}"
                        :wrapper-col="{ sm: 24}"
                        class="ant-col-md-22 ant-col-sm-22 ant-col-xs-24"
                      >
                        <div class="label_wrapper">
                          <label for="followers_count">{{ $t('campaign_detail.cost') }}</label>
                          <a-tooltip>
                            <template slot="title">
                              <p>{{ $t('campaign_report.cost') }}</p>
                            </template>
                            <img
                              src="~/static/images/Info.png"
                              alt="Info"
                            />
                          </a-tooltip>
                        </div>
                        <a-input-number
                          v-model="model.cost"
                          class="report_input"
                          :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                          :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                          :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                          @blur="createReport('cost')"
                          @change.native="changeInputReport()"
                        />
                      </a-form-model-item>
                    </a-col>
                    <a-col
                      :xs="24"
                      :sm="12"
                      :md="8"
                      :lg="6"
                      :xl="3"
                      :span="24"
                    >
                      <a-form-model-item
                        prop="revenue"
                        :label-col="{ sm: 24}"
                        :wrapper-col="{ sm: 24}"
                        class="ant-col-md-22 ant-col-sm-22 ant-col-xs-24"
                      >
                        <div class="label_wrapper">
                          <label for="followers_count">{{ $t('campaign_detail.revenue') }}</label>
                          <a-tooltip>
                            <template slot="title">
                              <p>{{ $t('campaign_report.revenue') }}</p>
                            </template>
                            <img
                              src="~/static/images/Info.png"
                              alt="Info"
                            />
                          </a-tooltip>
                        </div>
                        <a-input-number
                          v-model="model.revenue"
                          class="report_input"
                          :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                          :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                          :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                          @blur="createReport('revenue')"
                          @change.native="changeInputReport()"
                        />
                      </a-form-model-item>
                    </a-col>
                    <a-col
                      :xs="24"
                      :sm="12"
                      :md="8"
                      :lg="6"
                      :xl="3"
                      :span="24"
                    >
                      <a-form-model-item
                        prop="roas"
                        :label-col="{ sm: 24}"
                        :wrapper-col="{ sm: 24}"
                        class="ant-col-md-22 ant-col-sm-22 ant-col-xs-24"
                      >
                        <div class="label_wrapper">
                          <label>{{ $t('campaign.roas') }}</label>
                        </div>
                        <a-input-number
                          v-model="model.roas"
                          class="report_input"
                          :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                          :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                          :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                          @blur="createReport('roas')"
                          @change.native="changeInputReport()"
                        />
                      </a-form-model-item>
                    </a-col>
                    <a-col
                      :xs="24"
                      :sm="12"
                      :md="8"
                      :lg="6"
                      :xl="3"
                      :span="24"
                    >
                      <a-form-model-item
                        prop="number_of_kol"
                        :label-col="{ sm: 24}"
                        :wrapper-col="{ sm: 24}"
                        class="ant-col-md-22 ant-col-sm-22 ant-col-xs-24"
                      >
                        <div class="label_wrapper">
                          <label for="followers_count">{{ $t('campaign_detail.number_of_kol') }}</label>
                          <a-tooltip>
                            <template slot="title">
                              <p>{{ $t('campaign_report.number_of_kol') }}</p>
                            </template>
                            <img
                              src="~/static/images/Info.png"
                              alt="Info"
                            />
                          </a-tooltip>
                        </div>
                        <a-input-number
                          v-model="model.number_of_kol"
                          class="report_input"
                          :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                          :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                          :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                          @blur="createReport('number_of_kol')"
                          @change.native="changeInputReport()"
                        />
                      </a-form-model-item>
                    </a-col>
                    <a-col
                      :xs="24"
                      :sm="12"
                      :md="8"
                      :lg="8"
                      :xl="4"
                      :span="24"
                    >
                      <a-form-model-item
                        prop="follower"
                        :label-col="{ sm: 24}"
                        :wrapper-col="{ sm: 24}"
                        class="ant-col-md-22 ant-col-sm-22 ant-col-xs-24"
                      >
                        <div class="label_wrapper">
                          <label for="followers_count">{{ $t('campaign_detail.followers_count') }}</label>
                          <a-tooltip>
                            <template slot="title">
                              <p>{{ $t('campaign_report.followers_count') }}</p>
                            </template>
                            <img
                              src="~/static/images/Info.png"
                              alt="Info"
                            />
                          </a-tooltip>
                        </div>
                        <a-input-number
                          v-model="model.follower"
                          class="report_input"
                          :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                          :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                          :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                          @blur="createReport('follower')"
                          @change.native="changeInputReport()"
                        />
                      </a-form-model-item>
                    </a-col>
                    <a-col
                      :xs="24"
                      :sm="12"
                      :md="8"
                      :lg="8"
                      :xl="4"
                      :span="24"
                    >
                      <a-form-model-item
                        prop="follower_unit"
                        :label-col="{ sm: 24}"
                        :wrapper-col="{ sm: 24}"
                        class="ant-col-md-22 ant-col-sm-22 ant-col-xs-24"
                      >
                        <div class="label_wrapper">
                          <label>{{ $t('campaign_detail.unit_of_followers') }}</label>
                        </div>
                        <a-input-number
                          v-model="model.follower_unit"
                          class="report_input"
                          :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                          :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                          :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                          @blur="createReport('follower_unit')"
                          @change.native="changeInputReport()"
                        />
                      </a-form-model-item>
                    </a-col>
                    <a-col
                      :xs="24"
                      :sm="12"
                      :md="8"
                      :lg="8"
                      :xl="4"
                      :span="24"
                    >
                      <a-form-model-item
                        prop="reach_rate"
                        :label-col="{ sm: 24}"
                        :wrapper-col="{ xs: 24}"
                        class="ant-col-md-22 ant-col-sm-22 ant-col-xs-24"
                      >
                        <div class="label_wrapper">
                          <label>{{ $t('campaign_detail.ratio_research') }}</label>
                        </div>
                        <a-input-number
                          v-model="model.reach_rate"
                          class="report_input"
                          :formatter="value => `${value}%`"
                          :parser="value => value.replace('%', '')"
                          :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                          @blur="createReport('reach_rate')"
                          @change.native="changeInputReport()"
                        />
                      </a-form-model-item>
                    </a-col>
                  </a-row>
                </a-col>
              </a-row>
            </a-form-model>
            <a-form-model
              ref="form"
              layout="inline"
              :colon="false"
              :model="model"
              :label-col="{ sm: 24}"
              :wrapper-col="{ sm: 24 }"
              label-align="left"
              class="form__input--title"
            >
              <a-collapse v-model="activeCol">
                <a-collapse-panel key="1" :header="$t('campaign_detail.feed')" class="collapse-input">
                  <a-row>
                    <a-col
                      :xs="0"
                      :sm="0"
                      :md="0"
                      :lg="2"
                      :xl="2"
                      :span="24"
                    />
                    <a-col
                      :xs="24"
                      :sm="24"
                      :md="24"
                      :lg="22"
                      :xl="22"
                      :span="24"
                    >
                      <a-row>
                        <a-col
                          :xs="24"
                          :sm="12"
                          :md="8"
                          :lg="8"
                          :xl="5"
                          :span="24"
                        >
                          <a-form-model-item
                            :label="$t('feed.reach')"
                            prop="feed_reach"
                          >
                            <a-input-number
                              v-model="model.feed_reach"
                              class="report_input"
                              :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                              :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                              :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                              @blur="createReport('feed_reach')"
                              @change.native="changeInputReport()"
                            />
                          </a-form-model-item>
                        </a-col>
                        <a-col
                          :xs="24"
                          :sm="12"
                          :md="8"
                          :lg="8"
                          :xl="5"
                          :span="24"
                        >
                          <a-form-model-item
                            :label="$t('feed.reach_rate')"
                            prop="feed_reach_rate"
                          >
                            <a-input-number
                              v-model="model.feed_reach_rate"
                              class="report_input"
                              :formatter="value => `${value}%`"
                              :parser="value => value.replace('%', '')"
                              :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                              @blur="createReport('feed_reach_rate')"
                              @change.native="changeInputReport()"
                            />
                          </a-form-model-item>
                        </a-col>
                        <a-col
                          :xs="24"
                          :sm="12"
                          :md="8"
                          :lg="8"
                          :xl="5"
                          :span="24"
                        >
                          <a-form-model-item
                            :label="$t('feed.download')"
                            prop="feed_download"
                          >
                            <a-input-number
                              v-model="model.feed_download"
                              class="report_input"
                              :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                              :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                              :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                              @blur="createReport('feed_download')"
                              @change.native="changeInputReport()"
                            />
                          </a-form-model-item>
                        </a-col>
                        <a-col
                          :xs="24"
                          :sm="12"
                          :md="8"
                          :lg="8"
                          :xl="5"
                          :span="24"
                        >
                          <a-form-model-item
                            :label="$t('feed.download_rate')"
                            prop="feed_download_rate"
                          >
                            <a-input-number
                              v-model="model.feed_download_rate"
                              class="report_input"
                              :formatter="value => `${value}%`"
                              :parser="value => value.replace('%', '')"
                              :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                              @blur="createReport('feed_download_rate')"
                              @change.native="changeInputReport()"
                            />
                          </a-form-model-item>
                        </a-col>
                        <a-col
                          :xs="24"
                          :sm="12"
                          :md="8"
                          :lg="8"
                          :xl="4"
                          :span="24"
                        >
                          <a-form-model-item
                            :label="$t('feed.engagement_rate')"
                            prop="feed_engagement_rate"
                          >
                            <a-input-number
                              v-model="model.feed_engagement_rate"
                              class="report_input"
                              :formatter="value => `${value}%`"
                              :parser="value => value.replace('%', '')"
                              :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                              @blur="createReport('feed_engagement_rate')"
                              @change.native="changeInputReport()"
                            />
                          </a-form-model-item>
                        </a-col>
                      </a-row>
                    </a-col>
                  </a-row>
                </a-collapse-panel>
                <a-collapse-panel key="2" :header="$t('campaign_detail.story')" class="collapse__story-input">
                  <a-row>
                    <a-col
                      :xs="0"
                      :sm="0"
                      :md="0"
                      :lg="2"
                      :xl="2"
                      :span="24"
                    />
                    <a-col
                      :xs="24"
                      :sm="24"
                      :md="24"
                      :lg="22"
                      :xl="22"
                      :span="24"
                    >
                      <a-row>
                        <a-col
                          :xs="24"
                          :sm="12"
                          :md="8"
                          :lg="8"
                          :xl="4"
                          :span="24"
                        >
                          <a-form-model-item
                            :label="$t('story.impression')"
                            prop="story_impression"
                          >
                            <a-input-number
                              v-model="model.story_impression"
                              class="report_input"
                              :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                              :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                              :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                              @blur="createReport('story_impression')"
                              @change.native="changeInputReport()"
                            />
                          </a-form-model-item>
                        </a-col>
                        <a-col
                          :xs="24"
                          :sm="12"
                          :md="8"
                          :lg="8"
                          :xl="4"
                          :span="24"
                        >
                          <a-form-model-item
                            :label="$t('story.impression_rate')"
                            prop="story_impression_rate"
                          >
                            <a-input-number
                              v-model="model.story_impression_rate"
                              class="report_input"
                              :formatter="value => `${value}%`"
                              :parser="value => value.replace('%', '')"
                              :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                              @blur="createReport('story_impression_rate')"
                              @change.native="changeInputReport()"
                            />
                          </a-form-model-item>
                        </a-col>
                        <a-col
                          :xs="24"
                          :sm="12"
                          :md="8"
                          :lg="8"
                          :xl="4"
                          :span="24"
                        >
                          <a-form-model-item
                            :label="$t('story.click')"
                            prop="story_click"
                          >
                            <a-input-number
                              v-model="model.story_click"
                              class="report_input"
                              :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                              :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                              :disabled="disabled"
                              @blur="createReport('story_click')"
                              @change.native="changeInputReport()"
                            />
                          </a-form-model-item>
                        </a-col>
                        <a-col
                          :xs="24"
                          :sm="12"
                          :md="8"
                          :lg="8"
                          :xl="4"
                          :span="24"
                        >
                          <a-form-model-item
                            :label="$t('story.click_rate')"
                            prop="story_click_rate"
                          >
                            <a-input-number
                              v-model="model.story_click_rate"
                              class="report_input"
                              :formatter="value => `${value}%`"
                              :parser="value => value.replace('%', '')"
                              :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                              @blur="createReport('story_click_rate')"
                              @change.native="changeInputReport()"
                            />
                          </a-form-model-item>
                        </a-col>
                        <a-col
                          :xs="24"
                          :sm="12"
                          :md="8"
                          :lg="8"
                          :xl="4"
                          :span="24"
                        >
                          <a-form-model-item
                            :label="$t('story.reaction')"
                            prop="story_reaction"
                          >
                            <a-input-number
                              v-model="model.story_reaction"
                              class="report_input"
                              :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                              :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                              :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                              @blur="createReport('story_reaction')"
                              @change.native="changeInputReport()"
                            />
                          </a-form-model-item>
                        </a-col>
                        <a-col
                          :xs="24"
                          :sm="12"
                          :md="8"
                          :lg="8"
                          :xl="4"
                          :span="24"
                        >
                          <a-form-model-item
                            :label="$t('story.reaction_rate')"
                            prop="story_reaction_rate"
                          >
                            <a-input-number
                              v-model="model.story_reaction_rate"
                              class="report_input"
                              :formatter="value => `${value}%`"
                              :parser="value => value.replace('%', '')"
                              :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                              @blur="createReport('story_reaction_rate')"
                              @change.native="changeInputReport()"
                            />
                          </a-form-model-item>
                        </a-col>
                      </a-row>
                    </a-col>
                  </a-row>
                </a-collapse-panel>
                <a-collapse-panel key="3" :header="$t('campaign_detail.reel')" class="collapse-input">
                  <a-row>
                    <a-col
                      :xs="0"
                      :sm="0"
                      :md="0"
                      :lg="2"
                      :xl="2"
                      :span="24"
                    />
                    <a-col
                      :xs="24"
                      :sm="24"
                      :md="24"
                      :lg="22"
                      :xl="22"
                      :span="24"
                    >
                      <a-row>
                        <a-col
                          :xs="24"
                          :sm="12"
                          :md="8"
                          :lg="8"
                          :xl="5"
                          :span="24"
                        >
                          <a-form-model-item
                            :label="$t('reel.reach')"
                            prop="reed_reach"
                          >
                            <a-input-number
                              v-model="model.reed_reach"
                              class="report_input"
                              :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                              :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                              :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                              @blur="createReport('reed_reach')"
                              @change.native="changeInputReport()"
                            />
                          </a-form-model-item>
                        </a-col>
                        <a-col
                          :xs="24"
                          :sm="12"
                          :md="8"
                          :lg="8"
                          :xl="5"
                          :span="24"
                        >
                          <a-form-model-item
                            :label="$t('reel.reach_rate')"
                            prop="reed_reach_rate"
                          >
                            <a-input-number
                              v-model="model.reed_reach_rate"
                              class="report_input"
                              :formatter="value => `${value}%`"
                              :parser="value => value.replace('%', '')"
                              :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                              @blur="createReport('reed_reach_rate')"
                              @change.native="changeInputReport()"
                            />
                          </a-form-model-item>
                        </a-col>
                        <a-col
                          :xs="24"
                          :sm="12"
                          :md="8"
                          :lg="8"
                          :xl="5"
                          :span="24"
                        >
                          <a-form-model-item
                            :label="$t('reel.download')"
                            prop="reed_download"
                          >
                            <a-input-number
                              v-model="model.reed_download"
                              class="report_input"
                              :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                              :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                              :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                              @blur="createReport('reed_download')"
                              @change.native="changeInputReport()"
                            />
                          </a-form-model-item>
                        </a-col>
                        <a-col
                          :xs="24"
                          :sm="12"
                          :md="8"
                          :lg="8"
                          :xl="5"
                          :span="24"
                        >
                          <a-form-model-item
                            :label="$t('reel.download_rate')"
                            prop="reed_download_rate"
                          >
                            <a-input-number
                              v-model="model.reed_download_rate"
                              class="report_input"
                              :formatter="value => `${value}%`"
                              :parser="value => value.replace('%', '')"
                              :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                              @blur="createReport('reed_download_rate')"
                              @change.native="changeInputReport()"
                            />
                          </a-form-model-item>
                        </a-col>
                        <a-col
                          :xs="24"
                          :sm="12"
                          :md="8"
                          :lg="8"
                          :xl="4"
                          :span="24"
                        >
                          <a-form-model-item
                            :label="$t('reel.engagement_rate')"
                            prop="reed_engagement_rate"
                          >
                            <a-input-number
                              v-model="model.reed_engagement_rate"
                              class="report_input"
                              :formatter="value => `${value}%`"
                              :parser="value => value.replace('%', '')"
                              :disabled="campaign.campaign_mode === 1 ? disabled = true : disabled = false"
                              @blur="createReport('reed_engagement_rate')"
                              @change.native="changeInputReport()"
                            />
                          </a-form-model-item>
                        </a-col>
                      </a-row>
                    </a-col>
                  </a-row>
                </a-collapse-panel>
              </a-collapse>
            </a-form-model>
          </a-col>
        </a-row>
      </div>
      <div id="tabs" class="button__edit">
        <a-button
          html-type="submit"
          type="primary"
          class="min-w-100"
          :disabled="loading"
          @click="openEditModal()"
        >
          {{ $t('common.edit') }}
        </a-button>
      </div>

      <EditTableModal
        ref="EditTableModal"
        :visible="editMode"
        :feed-data="feedData"
        :story-data="storyData"
        :reel-data="reelData"
        :kols="kols"
        @save="saveEditModal()"
        @close-edit-modal="cancelEditModal()"
        @cancel-modal="editMode = false"
      />
      <!-- end confirm edit mode modal -->
      <a-tabs id="panes" v-model="activeKey" type="line">
        <a-tab-pane key="1" :tab="$t('campaign_detail.report.feed')">
          <div class="kol-table">
            <table>
              <tr class="table__flex">
                <th class="table__col-width">
                  {{ $t('kol.account_name') }}
                </th>
                <th class="table__col-width">
                  {{ $t('kol.posted_date') }}
                </th>
                <th class="table__col-width">
                  {{ $t('kol.post_url') }}
                </th>
                <th class="table__col-width">
                  {{ $t('campaign_detail.product_name') }}
                </th>
                <th class="table__col-width">
                  {{ $t('campaign.cost') }}
                </th>
                <th class="table__col-width">
                  {{ $t('kol.followers_count') }}
                </th>
                <th class="table__col-width">
                  {{ $t('campaign.reach') }}
                </th>
                <th class="table__col-width">
                  {{ $t('campaign.reach_rate') }}
                </th>
                <th class="table__col-width">
                  {{ $t('campaign_detail.download') }}
                </th>
                <th class="table__col-width">
                  {{ $t('campaign_detail.download_rate') }}
                </th>
                <th class="table__col-width">
                  {{ $t('campaign_detail.like') }}
                </th>
                <th class="table__col-width">
                  {{ $t('campaign_detail.comment_number') }}
                </th>
                <th class="table__col-width">
                  {{ $t('campaign_detail.regular_engagement_rate') }}
                </th>
                <th class="table__col-width">
                  {{ $t('campaign_detail.post_engagement_rate') }}
                </th>
                <th class="table__col-width">
                  {{ $t('campaign.revenue') }}
                </th>
                <th class="table__col-width">
                  {{ $t('campaign_detail.roas') }}
                </th>
              </tr>
              <tr
                v-for="(item, index) in feedData"
                :key="index"
              >
                <td class="table__col-width">
                  {{ item.kol.full_name }}
                </td>
                <td class="table__col-width">
                  <span class="space">{{ item.post_date ? moment(item.post_date).format(FORMAT_DATE_SLASH) : '' }}</span>
                </td>
                <td class="table__col-width">
                  <span class="space">{{ item.post_url }}</span>
                </td>
                <td class="table__col-width product_name">
                  <span class="space">{{ item.product_name }}</span>
                </td>
                <td class="table__col-width">
                  {{ commaSeperate(item.campaign_detail.cost) }}
                </td>
                <td class="table__col-width">
                  {{ commaSeperate(item.kol.followers_count) }}
                </td>
                <td class="table__col-width">
                  {{ commaSeperate(item.reach_count) }}
                </td>
                <td class="table__col-width">
                  {{ showDecimal(item.reach_rate) }}{{ $t('kol.percentage') }}
                </td>
                <td class="table__col-width">
                  {{ commaSeperate(item.download_count) }}
                </td>
                <td class="table__col-width">
                  {{ showDecimal(item.download_rate) }}{{ $t('kol.percentage') }}
                </td>
                <td class="table__col-width">
                  {{ commaSeperate(item.good_count) }}
                </td>
                <td class="table__col-width">
                  {{ commaSeperate(item.comment_count) }}
                </td>
                <td class="table__col-width">
                  {{ item.kol.engagement_rate }}{{ $t('kol.percentage') }}
                </td>
                <td class="table__col-width">
                  {{ showDecimal(item.preg_rate) }}{{ $t('kol.percentage') }}
                </td>
                <td class="table__col-width">
                  {{ commaSeperate(item.earning) }}
                </td>
                <td class="table__col-width">
                  {{ showDecimal(item.roas) }}{{ $t('kol.percentage') }}
                </td>
                <td class="table__col-width">
                  <a-button
                    html-type="button"
                    type="primary"
                    class="db-button"
                    @click="showDbDetail(item.kol_id)"
                  >
                    {{ $t('insight.DB') }}
                  </a-button>
                </td>
              </tr>
            </table>
          </div>
        </a-tab-pane>
        <a-tab-pane key="2" :tab="$t('campaign_detail.report.story')">
          <div class="kol-table">
            <table>
              <tr>
                <th>{{ $t('kol.account_name') }}</th>
                <th>{{ $t('kol.posted_date') }}</th>
                <th>{{ $t('kol.post_url') }}</th>
                <th>{{ $t('campaign_detail.product_name') }}</th>
                <th>{{ $t('campaign.cost') }}</th>
                <th>{{ $t('kol.followers_count') }}</th>
                <th>{{ $t('campaign_detail.impression') }}</th>
                <th>{{ $t('campaign_detail.impression_rate') }}</th>
                <th>{{ $t('campaign_detail.click') }}</th>
                <th>{{ $t('campaign_detail.click_rate') }}</th>
                <th>{{ $t('campaign_detail.reaction') }}</th>
                <th>{{ $t('campaign_detail.reaction_rate') }}</th>
                <th>{{ $t('campaign.revenue') }}</th>
                <th>{{ $t('campaign_detail.roas') }}</th>
              </tr>
              <tr
                v-for="(item, index) in storyData"
                :key="index"
              >
                <td>{{ item.kol.full_name }}</td>
                <td><span class="space">{{ item.post_date ? moment(item.post_date).format(FORMAT_DATE_SLASH) : '' }}</span></td>
                <td><span class="space">{{ item.post_url }}</span></td>
                <td><span class="space product_name">{{ item.product_name }}</span></td>
                <td>{{ commaSeperate(item.campaign_detail.cost) }}</td>
                <td>{{ commaSeperate(item.kol.followers_count) }}</td>
                <td>{{ commaSeperate(item.impression_count) }}</td>
                <td>{{ showDecimal(item.impression_rate) }}{{ $t('kol.percentage') }}</td>
                <td>{{ commaSeperate(item.click_count) }}</td>
                <td>{{ showDecimal(item.click_rate) }}{{ $t('kol.percentage') }}</td>
                <td>{{ commaSeperate(item.reaction_count) }}</td>
                <td>{{ showDecimal(item.reaction_rate) }}{{ $t('kol.percentage') }}</td>
                <td>{{ commaSeperate(item.earning) }}</td>
                <td>{{ showDecimal(item.roas) }}{{ $t('kol.percentage') }}</td>
                <td>
                  <a-button
                    html-type="button"
                    type="primary"
                    class="db-button"
                    @click="showDbDetail(item.kol_id)"
                  >
                    {{ $t('insight.DB') }}
                  </a-button>
                </td>
              </tr>
            </table>
          </div>
        </a-tab-pane>
        <a-tab-pane key="3" :tab="$t('campaign_detail.report.reel')">
          <div class="kol-table">
            <table>
              <tr>
                <th>{{ $t('kol.account_name') }}</th>
                <th>{{ $t('kol.posted_date') }}</th>
                <th>{{ $t('kol.post_url') }}</th>
                <th>{{ $t('campaign_detail.product_name') }}</th>
                <th>{{ $t('campaign.cost') }}</th>
                <th>{{ $t('kol.followers_count') }}</th>
                <th>{{ $t('campaign.reach') }}</th>
                <th>{{ $t('campaign.reach_rate') }}</th>
                <th>{{ $t('campaign_detail.download') }}</th>
                <th>{{ $t('campaign_detail.download_rate') }}</th>
                <th>{{ $t('campaign_detail.like') }}</th>
                <th>{{ $t('campaign_detail.comment_number') }}</th>
                <th>{{ $t('campaign_detail.regular_engagement_rate') }}</th>
                <th>{{ $t('campaign_detail.post_engagement_rate') }}</th>
                <th>{{ $t('campaign.revenue') }}</th>
                <th>{{ $t('campaign_detail.roas') }}</th>
              </tr>
              <tr
                v-for="(item, index) in reelData"
                :key="index"
              >
                <td>{{ item.kol.full_name }}</td>
                <td><span class="space">{{ item.post_date ? moment(item.post_date).format(FORMAT_DATE_SLASH) : '' }}</span></td>
                <td><span class="space">{{ item.post_url }}</span></td>
                <td><span class="space product_name">{{ item.product_name }}</span></td>
                <td>{{ commaSeperate(item.campaign_detail.cost) }}</td>
                <td>{{ commaSeperate(item.kol.followers_count) }}</td>
                <td>{{ commaSeperate(item.reach_count) }}</td>
                <td>{{ showDecimal(item.reach_rate) }}{{ $t('kol.percentage') }}</td>
                <td>{{ commaSeperate(item.download_count) }}</td>
                <td>{{ showDecimal(item.download_rate) }}{{ $t('kol.percentage') }}</td>
                <td>{{ commaSeperate(item.good_count) }}</td>
                <td>{{ commaSeperate(item.comment_count) }}</td>
                <td>{{ item.kol.engagement_rate }}{{ $t('kol.percentage') }}</td>
                <td>{{ showDecimal(item.preg_rate) }}{{ $t('kol.percentage') }}</td>
                <td>{{ commaSeperate(item.earning) }}</td>
                <td>{{ showDecimal(item.roas) }}{{ $t('kol.percentage') }}</td>
                <td>
                  <a-button
                    html-type="button"
                    type="primary"
                    class="db-button"
                    @click="showDbDetail(item.kol_id)"
                  >
                    {{ $t('insight.DB') }}
                  </a-button>
                </td>
              </tr>
            </table>
          </div>
        </a-tab-pane>
      </a-tabs>
    </a-spin>
    <!-- end main-table -->
    <div id="cards" class="card">
      <div
        v-for="(item, index) in kols"
        id="record-card"
        :key="index"
      >
        <div class="kol-card">
          <div class="kol-info">
            <div>
              <img
                class="kol-avatar"
                :src="item.kol.avatar_url"
                alt=""
              />
            </div>
            <div>
              <div class="kol-username">
                {{ item.kol.full_name }}
              </div>
            </div>
          </div>
          <div class="record-button">
            <div class="feed-button" @click="confirmEdit = true">
              {{ $t('campaign_detail.report.feed') }}
            </div>
            <div class="story-button" @click="confirmEdit = true">
              {{ $t('campaign_detail.report.story') }}
            </div>
            <div class="reel-button" @click="confirmEdit = true">
              {{ $t('campaign_detail.report.reel') }}
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end kol-card -->
    <ConfirmEditModal
      id="confirm"
      :visible="confirmEdit"
      @close-modal="confirmEdit = false"
      @confirm-edit-mode="confirmEditMode()"
    />
    <!-- end edit mode modal -->
    <DbModal
      ref="dbModal"
      :id="currentId"
      :tag-list="tags"
      @addTag="getUserTagReport"
      @changeRate="changeReport"
      @changeTag="changeReport"
      @save="closeDialog()"
    />
    <!-- end kol db modal-detail -->
  </div>
</template>
<script>

import html2pdf from 'html2pdf.js'
import moment from 'moment-timezone'
import Common from '~/mixins/common'
import TabReport from '~/mixins/tab-report'
import EditTableModal from '~/components/templates/campaign/TabReport/EditTableModal'
import ConfirmEditModal from '~/components/templates/campaign/TabReport/ConfirmEditModal'
import DbModal from '~/components/templates/kol/DbModal'
import { FORMAT_DATE_SLASH } from '~/constants'

export default {
  components: {
    EditTableModal,
    ConfirmEditModal,
    DbModal
  },

  mixins: [
    Common,
    TabReport
  ],

  data() {
    return {
      resource: 'campaignDetailPost',
      feedData: [],
      storyData: [],
      reelData: [],
      visible: false,
      editMode: false,
      confirmEdit: false,
      currentId: 0,
      dbModal: false,
      filters: {},
      checked: true,
      activeCol: 0,
      activeKey: '1',
      data: [],
      moment,
      endDate: moment().format('YYYY-MM-DD'),
      model: {
        campaign_id: this.id,
        cost: 0,
        revenue: 0,
        roas: 0,
        number_of_kol: 0,
        follower: 0,
        follower_unit: 0,
        reach_rate: 0,
        feed_reach: 0,
        feed_reach_rate: 0,
        feed_download: 0,
        feed_download_rate: 0,
        feed_engagement_rate: 0,
        story_impression: 0,
        story_impression_rate: 0,
        story_click: 0,
        story_click_rate: 0,
        story_reaction: 0,
        story_reaction_rate: 0,
        reed_reach: 0,
        reed_reach_rate: 0,
        reed_download: 0,
        reed_download_rate: 0,
        reed_engagement_rate: 0
      },
      isChanged: false,
      defaultParams: {
        not_admin: 1
      },
      FORMAT_DATE_SLASH
    }
  },
  props: {
    campaign: {
      type: Object,
      default: null
    },
    id: {
      type: Number,
      default: 0
    },
    kols: {
      type: Array,
      default: () => []
    },
    tags: {
      type: Array,
      default: () => []
    }
  },
  created() {
    this.getFeed()
    this.getStory()
    this.getReel()
    this.getCampaign()
    this.getCampaignReport()
  },

  methods: {
    changeReport() {
      this.$emit('changeReport')
    },

    getUserTagReport() {
      this.$emit('get-tag')
    },

    /**
     * Check campaign mode
     */
    async checkMode(mode, id) {
      this.$store.dispatch('setLoading', true)
      if (mode === 0 || mode === 1) {
        if (mode === 1) {
          await this.$api.campaign.updateActive(id, { campaign_mode: 0 })
          this.checked = false
          this.getCampaign()
          this.getCampaignReport()
        } else {
          await this.$api.campaign.updateActive(id, { campaign_mode: 1 })
          this.checked = true
          this.getCampaign()
          this.showCampaignAuto()
          this.getCampaignReport()
        }
      } else {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      }
      this.$store.dispatch('setLoading', false)
    },
    /**
     * Load data campaign detail
     */
    async getCampaign() {
      const { data: { result: { data } } } = await this.$api.campaign.show(this.id)
      this.campaign = data.campaigns
    },
    /**
     * Show data auto
     */
    async showCampaignAuto() {
      const { data: { result: { data } } } = await this.$api.campaignReport.showCampaignAuto(this.id)
      if (this.model.id) {
        await this.$api.campaignReport.update(this.model.id, data)
      } else {
        await this.$api.campaignReport.create(data)
      }
      this.getCampaignReport()
    },
    /**
     *  Show campaign report
     */
    async getCampaignReport() {
      const { data: { result: { data } } } = await this.$api.campaignReport.campaignReportShow(this.id)
      if (data.length > 0) {
        this.model = data[0]
      }
    },
    changeInputReport() {
      this.isChanged = true
    },
    /**
     *  Create report
     */
    createReport(fieldName) {
      if (this.isChanged) {
        try {
          this.$store.dispatch('setLoading', false)
          this.$refs.form.validate(async valid => {
            if (valid) {
              try {
                const dataReport = this.model
                const data = {}
                data[fieldName] = this.model[fieldName]
                if (this.model.id) {
                  await this.$api.campaignReport.update(this.model.id, data)
                } else {
                  await this.$api.campaignReport.create(dataReport)
                }
                this.getCampaignReport()
                this.$notification.success({
                  message: this.$t('save.success')
                })
              } catch (_) {
                this.$notification.error({
                  message: this.$t('text.something_wrong')
                })
                this.getCampaignReport()
              }
            }
          })
          this.isChanged = false
        } finally {
          this.$store.dispatch('setLoading', false)
        }
      }
    },
    /**
     *  Update start date cam paign
     */
    updateStartDate(id, startDate) {
      this.$refs.form.validate(async valid => {
        if (valid) {
          try {
            if (this.campaign.end_date) {
              if (this.campaign.end_date >= startDate.format('YYYY-MM-DD HH:mm:ss')) {
                await this.$api.campaign.updateEndDate(id, { end_date: this.campaign.end_date, start_date: startDate.format('YYYY-MM-DD') })
                this.$emit('updateDate')
                this.$notification.success({
                  message: this.$t('save.success')
                })
              } else {
                this.$emit('updateDate')
                this.$notification.error({
                  message: this.$t('text.something_wrong')
                })
              }
            } else if (this.endDate >= startDate.format('YYYY-MM-DD')) {
              await this.$api.campaign.updateStartDate(id, { start_date: startDate.format('YYYY-MM-DD') })
              this.$emit('updateDate')
              this.$notification.success({
                message: this.$t('save.success')
              })
            } else {
              this.$emit('updateDate')
              this.$notification.error({
                message: this.$t('text.something_wrong')
              })
            }
          } catch (_) {
            this.$notification.error({
              message: this.$t('text.something_wrong')
            })
          }
        }
      })
    },
    /**
     *  Update end date cam paign
     */
    updateEndDate(id, endDate) {
      this.$refs.form.validate(async valid => {
        if (valid) {
          try {
            if (endDate.format('YYYY-MM-DD HH:mm:ss') >= this.campaign.start_date) {
              await this.$api.campaign.updateEndDate(id, { end_date: endDate.format('YYYY-MM-DD'), start_date: this.campaign.start_date })
              this.$emit('updateDate')
              this.$notification.success({
                message: this.$t('save.success')
              })
            } else {
              this.$emit('updateDate')
              this.$notification.error({
                message: this.$t('text.something_wrong')
              })
            }
          } catch (_) {
            this.$notification.error({
              message: this.$t('text.something_wrong')
            })
          }
        }
      })
    },

    /**
     *  Export PDF
     */
    exportPDF() {
      this.activeCol = ['1', '2', '3']
      setTimeout(this.saveToLocal, 1500)
    },

    saveToLocal() {
      const setting =
        {
          margin: 1,
          filename: `${this.campaign.name}.pdf`,
          image: { type: 'jpeg', quality: 0.95 },
          html2canvas: { scale: 2, allowTaint: true, useCORS: true, letterRendering: true },
          pagebreak: { before: ['#confirm'], avoid: ['tr', '#record-card'] },
          jsPDF: { unit: 'cm', format: 'a2', orientation: 'portrait' }
        }
      html2pdf(this.$refs.tabReport, setting)
    },

    /**
     * Open Edit mode Modal
     */
    openEditModal() {
      this.editMode = true
    },

    /**
     * Save edit modal
     */
    saveEditModal() {
      this.editMode = false
      this.confirmEdit = false
      this.getFeed()
      this.getStory()
      this.getReel()
      this.$emit('fetch-kol-report')
      this.$emit('fetchCampain')
      if (this.campaign.campaign_mode === 1) {
        this.showCampaignAuto()
      } else {
        this.getCampaignReport()
      }
    },

    /**
     * Cancel edit modal
     */
    cancelEditModal() {
      this.editMode = false
      this.getFeed()
      this.getStory()
      this.getReel()
      this.$emit('fetch-kol-report')
    },

    /**
     * Confirm edit, open edit modal
     */
    confirmEditMode() {
      this.confirmEdit = false
      this.editMode = true
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
     * Close dialog
     */
    closeDialog() {
      this.$refs.dbModal.onClose()
    }
  }
}
</script>
<style lang="scss" scoped>
.space {
  letter-spacing: -0.45px;
}
.borer_report {
  border-top: 1px solid #EEEEEE;
  padding-top: 82px;
  margin-top: 16px;
}
.padding__bottom-form{
  padding-bottom: 30px;
}
.form__input{
  padding-bottom: 6px
}
.kol-table{
  /deep/ {
    td.table__col-width:nth-child(3) {
      width: 11%;
    }
    td.table__col-width:nth-child(1) {
      width: 6%;
    }
    td.table__col-width:nth-child(6),
    td.table__col-width:nth-child(2) {
      width: 6%;
    }
    td.table__col-width:nth-child(4),
    td.table__col-width:nth-child(5),
    td.table__col-width:nth-child(7),
    td.table__col-width:nth-child(8),
    td.table__col-width:nth-child(9),
    td.table__col-width:nth-child(10),
    td.table__col-width:nth-child(11),
    td.table__col-width:nth-child(12),
    td.table__col-width:nth-child(13),
    td.table__col-width:nth-child(14),
    td.table__col-width:nth-child(15),
    td.table__col-width:nth-child(16),
    td.table__col-width:nth-child(17) {
      width: 5%;
    }
  }
}
/deep/ {
  .ant-input-number-handler-wrap{
    display: none;
  }
  .button__edit{
    padding: 20px 0px 34px 0px;
  }
  .form__date-picker{
    margin-top: 7px;
  }
  .form__margin{
    margin-left: 16px;
  }
  .text-right{
    display: flex;
    justify-content: end;
    align-items: end;
  }
  .switch__margin{
    margin-bottom: 4px;
  }
  .text-right > div{
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    line-height: 23px;
  }
  .button_pdf,
  .text-right > div:first-child,
  input.ant-calendar-picker-input.ant-input,
  .ant-tabs-tab{
    color: #000000;
  }
  .ant-tabs-nav .ant-tabs-tab-active{
    color: #1890ff;
  }
  .ant-tabs-ink-bar{
    display: none !important;
  }
  .button__edit button.ant-btn{
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 20px;
    line-height: 20px;
    width: 140px;
    height: 50px;
    border-radius: 0;
  }
  .button__edit button.ant-btn span{
    color: #fff;
  }
  .ant-tabs-nav{
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 20px;
    line-height: 20px;
  }
  .time__font{
    line-height: 60px;
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    color: #000000;
    margin-left: 16px;
  }
  .report_input {
    border: none;
    border-bottom: 1px solid #000000;
    border-radius: 0;
  }
  .report_input:focus{
    box-shadow: none;
  }
  .report_input[disabled]{
    background-color: #fff ;
  }

  .d-flex {
    display: flex
  }

  .color-auto {
    color: #1890FF
  }
  .button_pdf {
    font-family: 'Open Sans';
    background: #FFFFFF;
    border: 1px solid #1890FF;
    border-radius: 100px;
    margin-bottom: 5px;
  }
  .ant-collapse-content, .ant-collapse {
    background-color: #fff;
    border: none;
  }
  .ant-collapse-item.ant-collapse-item-active {
    margin-bottom: 25px;
  }
  .ant-collapse-header {
    border: 1px solid #EEEEEE;
    border-bottom: none;
  }
  .ant-collapse > .ant-collapse-item {
    box-shadow: 0px 4px 5px rgba(0, 0, 0, 0.2);
    margin-bottom: 25px;
  }
  .ant-collapse-content-box {
    box-shadow: 0px 4px 5px rgba(0, 0, 0, 0.2);
    border-top: none;
  }

  .ant-collapse > .ant-collapse-item > .ant-collapse-header .ant-collapse-arrow svg{
    transform: rotate(270deg);
  }
  .ant-collapse > .ant-collapse-item > .ant-collapse-header {
    position: relative;
    padding: 12px 16px;
    color: #000000;
    line-height: 22px;
    cursor: pointer;
    transition: all 0.3s;
  }
  .ant-collapse > .ant-collapse-item > .ant-collapse-header .ant-collapse-arrow {
    left: 97% !important;
  }
  input.ant-input {
    height: 60px;
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 20px;
    line-height: 27px;
    color: #000000;
  }
  span.ant-calendar-picker {
    margin-right: 20px;
  }
  .ant-calendar-picker-icon {
    display: none;
  }
}
.date__picker{
  position: relative;
}
.date__picker::before{
  content: '';
  z-index: 1;
  background: #ffffff;
  height: 19px;
  width: 54px;
  position: absolute;
  top: -8px;
  left: 7px;
}
.time_absolute{
  position: absolute;
  top: -9px;
  z-index: 2;
  left: 10px;
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 23px;
  color: #888888;
}
.date__picker{
  /deep/ {
    i.anticon.anticon-close-circle.ant-calendar-picker-clear{
      display: none;
    }
    .ant-calendar-picker{
      width: 94%;
    }
    .ant-calendar-picker input{
      width: 100%;
    }
    .ant-calendar-picker-input {
      font-family: 'Open Sans';
      font-style: normal;
      font-weight: 400;
      font-size: 18px;
      line-height: 27px;
      padding-top: 20px;
      padding-bottom: 15px;
    }
  }
}
.kol-table {
  overflow: auto;
  background: #FFFFFF;
  border: 1px solid #C0C0C0;
  border-radius: 5px;
  padding: 22px 54px 32px 40px;
}

th {
  min-width: 120px;
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 700;
  font-size: 16px;
  line-height: 23px;
  padding-bottom: 18px;
  padding-right: 10px;
  padding-left: 10px;
  color: #000000;
}
tr:nth-child(even) {
  background: #F3F3F3;
}

td {
  padding: 8px 10px 8px 10px;
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 23px;
  color: #000000;
}
.space.product_name,
.table__col-width.product_name {
  font-family: 'BIZ UDGothic';
}

.db-button {
  width: 80px;
  height: 35px;
  border-radius: 3px;
  font-family: 'Open Sans';
}

table {
  width: 161%;
  overflow-x: auto;
}

.card {
  padding-bottom: 50px;
}

.kol-card {
  margin-top: 20px;
  width: 70%;
  background: #FFFFFF;
  border: 1px solid #EEEEEE;
  box-shadow: 0px 4px 5px rgba(0, 0, 0, 0.2);
  border-radius: 5px;
  height: 85px;
  display: flex;
  justify-content: space-between;
  padding-left: 40px;
  @include mq(max_lg) {
    width: 100%;
    padding-left: 10px;
  }
}

.kol-info {
  display: flex;
  align-items: center;
  justify-content: start;
  width: 40%;
}

.kol-avatar {
  max-width: 100%;
  height: 65px;
  min-width: 65px;
  border-radius: 50%;
  object-fit: cover;
}

.kol-username {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 22px;
  padding-left: 50px;
  width: 100%;
  color: #000000;
}

.feed-button,
.reel-button,
.story-button {
  font-family: 'BIZ UDGothic';
  cursor: pointer;
  font-style: normal;
  font-weight: 400;
  font-size: 18px;
  line-height: 20px;
  color: #000000;
}

.record-button {
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 40%;
  padding-right: 30px;
  color: #000000;
  @include mq(max_lg) {
    width: 55%;
    padding-right: 10px;
  }
}

.btn-issues-form {
  position: absolute;
  top: 12px;
  border: none;
  z-index: 1;
  background: none;
  right: 16px
}
.form__input--title{
  /deep/{
    .ant-input, .ant-form-item-label {
      padding: 0;
    }
    .ant-input-number {
      margin-bottom: 33px;
      font-family: 'Open Sans';
      font-style: normal;
      font-weight: 400;
      font-size: 18px;
      line-height: 27px;
      color: #000000;
      width: 100%;
    }
    .ant-input-number-focused {
      box-shadow: none;
    }
    .ant-input-number-disabled {
      background-color: #FFFFFF;
    }
  }
}

.label_wrapper {
  height: 23px;
  line-height: 23px;
  label {
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    line-height: 23px;
    text-align: center;
    color: #000000;
  }
  img {
    margin-bottom: 5px;
  }
}
.form__input--title {
  /deep/ {
    .ant-collapse-header{
      font-family: 'BIZ UDGothic';
      font-style: normal;
      font-weight: 400;
      font-size: 20px;
      line-height: 20px;
      color: #000000;
    }
    label {
      font-family: 'BIZ UDGothic';
      font-style: normal;
      font-weight: 400;
      font-size: 16px;
      line-height: 23px;
      text-align: center;
      color: #000000;
    }
  }
}
.card-report-list {
  /deep/ {
    .ant-input-number-input{
      padding: 0;
    }
  }
}

@media (max-width: 575.98px) {
  .collapse__story-input, .collapse-input{
    /deep/ {
      .ant-input {
        margin-bottom: 35px;
      }
      .ant-form-item{
        width: 100%;
      }
    }
  }

  .form__input{
    /deep/{
      .ant-form {
        padding: 0 16px;
      }
    }
  }
}

// Small devices (landscape phones, less than 768px)
@media (min-width:576px) and (max-width: 767.98px) {
  .collapse-input{
    /deep/ {
      .ant-input {
        margin-bottom: 35px;
      }
      .ant-col-sm-12:nth-child(5){
        width: 97%;
        .ant-form-item {
          width: 100%;
        }
      }
    }
  }
  .collapse__story-input{
    /deep/ {
      .ant-input {
        margin-bottom: 35px;
      }

    }
  }
}

// Medium devices (tablets, less than 992px)
@media (min-width:768px) and (max-width: 991.98px) {
  .collapse__story-input, .collapse-input{
    /deep/ {
      .ant-input {
        margin-bottom: 35px;
      }
    }
  }
}

// Large devices (desktops, less than 1200px)
@media (min-width: 992px) and (max-width: 1025.98px) {
  .collapse-input{
    /deep/ {
      .ant-form-item-label {
        min-height: 75px;
      }
    }
  }
  .collapse__story-input {
    /deep/ {
      .ant-form-item-label {
        min-height: 94px;
      }
    }
  }

  .form__input{
    /deep/ {
      .ant-form-item-label {
        min-height: 47px;
      }
    }
  }
}

@media (min-width: 1026px) and (max-width: 1328.98px) {
  .collapse-input{
    /deep/ {
      .ant-form-item-label {
        min-height: 50px;
      }
    }
  }
  .form__input{
    /deep/ {
      .ant-form-item-label {
        min-height: 47px;
      }
    }
  }
}

@media (min-width: 1329px) and (max-width: 1533.98px) {
  .form__input{
    /deep/ {
      .ant-form-item-label {
        min-height: 47px;
      }
    }
  }
  .record-button {
    width: 50%;
  }
  .kol-card {
    width: 70%;
  }
  /deep/ {
    .ant-calendar-picker-input {
      padding-top: 13px !important;
      padding-bottom: 10px !important;
      height: 45px !important;
    }
  }
}

@media (min-width: 1026px) and (max-width: 1080.98px) {
  .collapse__story-input {
    /deep/ {
      .ant-form-item-label {
        min-height: 94px;
      }
    }
  }
}
@media (min-width: 1366px) and (max-width: 1535.98px) {
  .time__font{
    font-size: 13px;
    margin-left: 0px;
    line-height: 38px;
  }
  .record-button {
    width: 45%;
    padding-right: 20px;
  }
  .feed-button,
  .reel-button,
  .story-button{
    font-size: 14px;
  }
  /deep/{
    input.ant-calendar-picker-input.ant-input {
      height: 38px;
      font-size: 18px;
    }
    .form__date-picker{
      margin-top: 30px;
    }
  }
  .time_absolute{
    font-size: 14px;
  }
  table {
    width: 255% !important;
  }
  .label_wrapper {
    height: 23px !important;
    label {
      font-size: 14px;
    }
  }
  .form__input{
    /deep/ {
      .ant-form-item-label {
        min-height: 23px !important;
      }
    }
  }
  .form__input--title {
    /deep/ {
      label {
        font-size: 14px;
      }
      .ant-input-number {
        font-size: 18px;
      }
    }
  }
  .date__picker{
    /deep/ {
      .ant-calendar-picker-input {
        font-size: 16px;
      }
    }
  }
  .collapse__story-input {
    /deep/ {
      .ant-form-item-label {
        min-height: 23px !important;
      }
    }
  }
}
@media (min-width: 1536px) and (max-width: 1554.98px) {
  .form__input--title{
    /deep/{
      .ant-input-number {
        font-size: 18px;
      }
    }
  }
  /deep/{
    input.ant-calendar-picker-input.ant-input {
      font-size: 18px;
    }
  }
  .date__picker{
    /deep/ {
      .ant-calendar-picker-input {
        font-size: 18px;
      }
    }
  }
  .label_wrapper {
    height: 23px !important;
  }
  .form__input{
    /deep/ {
      .ant-form-item-label {
        min-height: 23px !important;
      }
    }
  }
  .label_wrapper{
    height: 46px;
  }
  .form__input{
    /deep/ {
      .ant-form-item-label {
        min-height: 46px;
      }
    }
  }
  .record-button {
    width: 45%;
    padding-right: 20px;
  }
  .feed-button,
  .reel-button,
  .story-button{
    font-size: 16px;
  }
  table {
    width: 225% !important;
  }
  .kol-info {
    width: 55%;
  }
  .kol-card {
    width: 65%;
  }
}
@media (min-width: 1536px) and (max-width: 1639.98px) {
  .time__font{
    font-size: 16px;
    margin-left: 0px;
  }
}

@media (min-width: 1081px) and (max-width: 1200.98px) {
  .collapse__story-input {
    /deep/ {
      .ant-form-item-label {
        min-height: 72px;
      }
    }
  }
}

@media (min-width: 1201px) and (max-width: 1607.98px) {
  .collapse__story-input {
    /deep/ {
      .ant-form-item-label {
        min-height: 47px;
      }
    }
  }
}
@media (min-width: 1047px) and (max-width: 1533.98px){
  .label_wrapper{
    height: 47px
  }
}
@media (min-width:768px){
  .date__picker:first-child{
    margin-right: 8px;
  }
}
</style>
