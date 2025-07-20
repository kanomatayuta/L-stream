<template>
  <a-modal
    v-model="visible"
    class="edit-modal"
    :closable="false"
    :footer="null"
    :keyboard="false"
    :mask-closable="false"
    :dialog-style="{ top: '120px' }"
    width="100%"
    centered
  >
    <a-form-model
      ref="form"
      @submit.prevent="submit()"
    >
      <a-spin :spinning="loading">
        <div class="modal-button">
          <div>
            <a-button
              html-type="submit"
              type="primary"
              class="min-w-100"
            >
              {{ $t('common.save') }}
            </a-button>
            <a-button
              html-type="button"
              type="default"
              class="min-w-100"
              @click="closeEdit()"
            >
              <div class="cancel-butt">
                {{ $t('common.cancel') }}
              </div>
            </a-button>
          </div>
        </div>
        <a-tabs v-model="activeKey" type="line" class="modal-content">
          <a-tab-pane key="1" :tab="$t('campaign_detail.report.feed')">
            <div class="table-edit">
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
                  v-for="(item, index) in feedData"
                  :key="index"
                >
                  <td>{{ item.kol.full_name }}</td>
                  <td
                    class="post-date"
                  >
                    <a-date-picker
                      v-model="item.post_date"
                      :format="FORMAT_DATE_SLASH"
                      @change="feedReelChange(item)"
                    />
                  </td>
                  <td
                    class="kol-url"
                  >
                    <a-input
                      v-model="item.post_url"
                      @change="feedReelChange(item)"
                    />
                  </td>
                  <td>
                    <a-input
                      v-model="item.product_name"
                      class="product-name"
                      @change="feedReelChange(item)"
                    />
                  </td>
                  <td>{{ commaSeperate(item.campaign_detail.cost) }}</td>
                  <td>{{ commaSeperate(item.kol.followers_count) }}</td>
                  <td>
                    <a-input-number
                      v-model="item.reach_count"
                      :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                      :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                      :min="0"
                      @change="feedReelChange(item)"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.reach_rate"
                      class="disabled-input"
                      disabled="true"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.download_count"
                      :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                      :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                      :min="0"
                      @change="feedReelChange(item)"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.download_rate"
                      class="disabled-input"
                      disabled="true"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.good_count"
                      :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                      :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                      :min="0"
                      @change="feedReelChange(item)"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.comment_count"
                      :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                      :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                      :min="0"
                      @change="feedReelChange(item)"
                    />
                  </td>
                  <td>{{ item.kol.engagement_rate }}{{ $t('kol.percentage') }}</td>
                  <td>
                    <a-input-number
                      v-model="item.preg_rate"
                      class="disabled-input"
                      disabled="true"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.earning"
                      :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                      :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                      :min="0"
                      @change="feedReelChange(item)"
                    />
                  </td>
                  <td>
                    <a-input-number
                      class="disabled-input"
                      :value="item.roas"
                      disabled="true"
                    />
                  </td>
                  <td>
                    <a-dropdown
                      placement="bottomCenter"
                      :trigger="['click']"
                    >
                      <a-button
                        class="table-button"
                        type="primary"
                        :disabled="loading"
                      >
                        ...
                      </a-button>
                      <a-menu slot="overlay">
                        <a-menu-item>
                          <div
                            class="table-button-child"
                            @click="cloneRecord(item)"
                          >
                            {{ $t('common.add') }}
                          </div>
                        </a-menu-item>
                        <a-menu-item>
                          <div
                            class="table-button-child"
                            @click="deleteRecord(item, index)"
                          >
                            {{ $t('common.delete') }}
                          </div>
                        </a-menu-item>
                      </a-menu>
                    </a-dropdown>
                  </td>
                </tr>
              </table>
            </div>
            <!-- Edit Feed -->
          </a-tab-pane>
          <a-tab-pane key="2" :tab="$t('campaign_detail.report.story')">
            <div class="table-edit">
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
                  <td class="post-date">
                    <a-date-picker
                      v-model="item.post_date"
                      :format="FORMAT_DATE_SLASH"
                      @change="storyChange(item)"
                    />
                  </td>
                  <td
                    class="kol-url"
                  >
                    <a-input
                      v-model="item.post_url"
                      @change="storyChange(item)"
                    />
                  </td>
                  <td>
                    <a-input
                      class="product-name"
                      v-model="item.product_name"
                      @change="storyChange(item)"
                    />
                  </td>
                  <td>{{ commaSeperate(item.campaign_detail.cost) }}</td>
                  <td>{{ commaSeperate(item.kol.followers_count) }}</td>
                  <td>
                    <a-input-number
                      v-model="item.impression_count"
                      :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                      :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                      :min="0"
                      @change="storyChange(item)"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.impression_rate"
                      class="disabled-input"
                      disabled="true"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.click_count"
                      :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                      :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                      :min="0"
                      @change="storyChange(item)"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.click_rate"
                      class="disabled-input"
                      disabled="true"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.reaction_count"
                      :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                      :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                      :min="0"
                      @change="storyChange(item)"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.reaction_rate"
                      class="disabled-input"
                      disabled="true"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.earning"
                      :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                      :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                      :min="0"
                      @change="storyChange(item)"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.roas"
                      class="disabled-input"
                      disabled="true"
                    />
                  </td>
                  <td>
                    <a-dropdown
                      placement="bottomCenter"
                      :trigger="['click']"
                    >
                      <a-button
                        class="table-button"
                        type="primary"
                        :disabled="loading"
                      >
                        ...
                      </a-button>
                      <a-menu slot="overlay">
                        <a-menu-item>
                          <div
                            class="table-button-child"
                            @click="cloneRecord(item)"
                          >
                            {{ $t('common.add') }}
                          </div>
                        </a-menu-item>
                        <a-menu-item>
                          <div
                            class="table-button-child"
                            @click="deleteRecord(item, index)"
                          >
                            {{ $t('common.delete') }}
                          </div>
                        </a-menu-item>
                      </a-menu>
                    </a-dropdown>
                  </td>
                </tr>
              </table>
            </div>
          </a-tab-pane>
          <a-tab-pane key="3" :tab="$t('campaign_detail.report.reel')">
            <div class="table-edit">
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
                  <td class="post-date">
                    <a-date-picker
                      v-model="item.post_date"
                      :format="FORMAT_DATE_SLASH"
                      @change="feedReelChange(item)"
                    />
                  </td>
                  <td
                    class="kol-url"
                  >
                    <a-input
                      v-model="item.post_url"
                      @change="feedReelChange(item)"
                    />
                  </td>
                  <td>
                    <a-input
                      v-model="item.product_name"
                      class="product-name"
                      @change="feedReelChange(item)"
                    />
                  </td>
                  <td>{{ commaSeperate(item.campaign_detail.cost) }}</td>
                  <td>{{ commaSeperate(item.kol.followers_count) }}</td>
                  <td>
                    <a-input-number
                      v-model="item.reach_count"
                      :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                      :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                      :min="0"
                      @change="feedReelChange(item)"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.reach_rate"
                      class="disabled-input"
                      disabled="true"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.download_count"
                      :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                      :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                      :min="0"
                      @change="feedReelChange(item)"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.download_rate"
                      class="disabled-input"
                      disabled="true"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.good_count"
                      :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                      :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                      :min="0"
                      @change="feedReelChange(item)"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.comment_count"
                      :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                      :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                      :min="0"
                      @change="feedReelChange(item)"
                    />
                  </td>
                  <td>{{ item.kol.engagement_rate }}{{ $t('kol.percentage') }}</td>
                  <td>
                    <a-input-number
                      v-model="item.preg_rate"
                      class="disabled-input"
                      disabled="true"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.earning"
                      :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                      :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                      :min="0"
                      @change="feedReelChange(item)"
                    />
                  </td>
                  <td>
                    <a-input-number
                      v-model="item.roas"
                      class="disabled-input"
                      disabled="true"
                    />
                  </td>
                  <td>
                    <a-dropdown
                      placement="bottomCenter"
                      :trigger="['click']"
                    >
                      <a-button
                        class="table-button"
                        type="primary"
                        :disabled="loading"
                      >
                        ...
                      </a-button>
                      <a-menu slot="overlay">
                        <a-menu-item>
                          <div
                            class="table-button-child"
                            @click="cloneRecord(item)"
                          >
                            {{ $t('common.add') }}
                          </div>
                        </a-menu-item>
                        <a-menu-item>
                          <div
                            class="table-button-child"
                            @click="deleteRecord(item, index)"
                          >
                            {{ $t('common.delete') }}
                          </div>
                        </a-menu-item>
                      </a-menu>
                    </a-dropdown>
                  </td>
                </tr>
              </table>
            </div>
          </a-tab-pane>
        </a-tabs>
      </a-spin>
    </a-form-model>
    <div class="card">
      <div
        v-for="(item, index) in kols"
        :key="index"
      >
        <div
          v-if="!show.includes(index)"
          class="kol-card"
        >
          <div class="kol-info">
            <div>
              <img
                class="kol-avatar"
                :src="item.kol.avatar_url"
                alt="avatar"
              />
            </div>
            <div>
              <span class="kol-username">{{ item.kol.full_name }}</span>
            </div>
          </div>
          <div class="record-button">
            <div class="feed-button" @click="addFeedRecord(item, index)">
              {{ $t('campaign_detail.report.feed') }}
            </div>
            <div class="story-button" @click="addStoryRecord(item, index)">
              {{ $t('campaign_detail.report.story') }}
            </div>
            <div class="reel-button" @click="addReelRecord(item, index)">
              {{ $t('campaign_detail.report.reel') }}
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Kol Card -->
    <ConfirmSaveModal
      :visible="isSave"
      @save-modal="confirmSave()"
      @close-save-modal="isSave = false"
    />
  </a-modal>
</template>

<script>
import TabReport from '~/mixins/tab-report'
import Common from '~/mixins/common'
import ConfirmSaveModal from '~/components/templates/campaign/TabReport/ConfirmSaveModal'
import { FORMAT_DATE_SLASH } from '~/constants'

export default {
  components: {
    ConfirmSaveModal
  },

  mixins: [
    Common,
    TabReport
  ],

  data() {
    return {
      resource: 'campaignDetailPost',
      activeKey: '1',
      data: [],
      show: [],
      dataChange: false,
      isSave: false,
      FORMAT_DATE_SLASH
    }
  },

  props: {
    visible: {
      type: Boolean,
      default: false
    },
    feedData: {
      type: Array,
      default: () => []
    },
    storyData: {
      type: Array,
      default: () => []
    },
    reelData: {
      type: Array,
      default: () => []
    },
    kols: {
      type: [Array],
      default: () => []
    }
  },

  methods: {
    /**
     * On change feed, reel data
     *
     * @param item
     */
    feedReelChange(item) {
      const follower = parseFloat(item.kol.followers_count)
      const reachCount = parseFloat(item.reach_count)
      const download = parseFloat(item.download_count)
      const like = parseFloat(item.good_count)
      const comment = parseFloat(item.comment_count)
      const earning = parseFloat(item.earning)
      const money = parseFloat(item.campaign_detail.cost)
      if (isNaN(reachCount)) {
        item.reach_rate = 0
      } else {
        item.reach_rate = reachCount / follower * 100
      }
      if (isNaN(download)) {
        item.download_rate = 0
      } else {
        item.download_rate = download / follower * 100
      }
      if (isNaN((like + comment))) {
        item.preg_rate = 0
      } else {
        item.preg_rate = (like + comment) / follower * 100
      }
      if (isNaN(earning) || money === 0) {
        item.roas = 0
      } else {
        item.roas = earning / money * 100
      }
      this.dataChange = true
    },

    /**
     * On change story data
     *
     * @param item
     */
    storyChange(item) {
      const follower = parseFloat(item.kol.followers_count)
      const click = parseFloat(item.click_count)
      const reaction = parseFloat(item.reaction_count)
      const impression = parseFloat(item.impression_count)
      const earning = parseFloat(item.earning)
      const money = parseFloat(item.campaign_detail.cost)
      if (isNaN(click)) {
        item.click_rate = 0
      } else {
        item.click_rate = click / follower * 100
      }
      if (isNaN(reaction)) {
        item.reaction_rate = 0
      } else {
        item.reaction_rate = reaction / follower * 100
      }
      if (isNaN(impression)) {
        item.impression_rate = 0
      } else {
        item.impression_rate = impression / follower * 100
      }
      if (isNaN(earning) || money === 0) {
        item.roas = 0
      } else {
        item.roas = earning / money * 100
      }
      this.dataChange = true
    },

    /**
     * Add feed record
     */
    addFeedRecord(item, index) {
      if (item.campaign_detail_id) {
        item.report_type = 1
        this.feedData.push(item)
      } else {
        this.feedData.push({
          report_type: 1,
          kol_id: item.kol.id,
          kol: item.kol,
          campaign_detail: item,
          campaign_id: item.campaign_id,
          campaign_detail_id: item.id,
          post_date: '',
          post_url: '',
          product_name: '',
          download_rate: 0,
          download_count: 0,
          good_count: 0,
          comment_count: 0,
          normal_eg_rate: item.kol.engagement_rate,
          preg_rate: 0,
          reach_count: 0,
          reach_rate: 0,
          earning: 0,
          roas: 0
        })
      }
      this.dataChange = true
      this.show.push(index)
    },

    /**
     * Add story record
     */
    addStoryRecord(item, index) {
      if (item.campaign_detail_id) {
        item.report_type = 2
        this.storyData.push(item)
      } else {
        this.storyData.push({
          report_type: 2,
          kol_id: item.kol.id,
          kol: item.kol,
          campaign_detail: item,
          campaign_id: item.campaign_id,
          campaign_detail_id: item.id,
          post_date: '',
          post_url: '',
          product_name: '',
          impression_count: 0,
          impression_rate: 0,
          click_count: 0,
          click_rate: 0,
          reaction_count: 0,
          reaction_rate: 0,
          earning: 0,
          roas: 0
        })
      }
      this.dataChange = true
      this.show.push(index)
    },

    /**
     * Add reel record
     */
    addReelRecord(item, index) {
      if (item.campaign_detail_id) {
        item.report_type = 3
        this.reelData.push(item)
      } else {
        this.reelData.push({
          report_type: 3,
          kol_id: item.kol.id,
          kol: item.kol,
          campaign_detail: item,
          campaign_id: item.campaign_id,
          campaign_detail_id: item.id,
          post_date: '',
          post_url: '',
          product_name: '',
          download_rate: 0,
          download_count: 0,
          good_count: 0,
          comment_count: 0,
          normal_eg_rate: item.kol.engagement_rate,
          preg_rate: 0,
          reach_count: 0,
          reach_rate: 0,
          earning: 0,
          roas: 0
        })
      }
      this.dataChange = true
      this.show.push(index)
    },

    /**
     *  Open modal if user dont save data
     */
    closeEdit() {
      if (this.dataChange) {
        this.isSave = true
      } else {
        this.$emit('cancel-modal')
      }
    },

    /**
     *  Close without save data
     */
    confirmSave() {
      this.dataChange = false
      this.show = []
      this.isSave = false
      this.$emit('close-edit-modal')
    },

    /**
     *  Clone one more record
     */
    cloneRecord(item) {
      const clone = { ...item }
      if (item.id) {
        delete clone.id
      }
      this.kols.push(clone)
    }
  }
}
</script>

<style lang="scss" scoped>
.modal-tab {
  padding-left: 29px;
  padding-top: 35px;
  border-radius: 5px;
}

.modal-button {
  display: flex;
  justify-content: end;
  padding-right: 61px;
  padding-top: 22px;
}

.card {
  padding-left: 19px;
  padding-bottom: 50px;
}

.table-edit {
  border-radius: 5px;
  box-shadow: 0px 4px 9px rgba(0, 0, 0, 0.15);
  padding-left: 20px;
  padding-top: 40px;
  padding-bottom: 20px;
  overflow-x: auto;
}

td {
  padding: 8px 10px 8px 10px;
  font-family: 'Open Sans';
  font-size: 16px;
  .ant-input-number {
    font-size: 16px;
  }
  .input.ant-calendar-picker-input.ant-input {
    font-family: 'Open Sans' !important;
  }
}

tr:nth-child(even) {
  background: #F3F3F3;
}

.kol-card {
  margin-top: 20px;
  width: 55%;
  background: #FFFFFF;
  border: 1px solid #EEEEEE;
  box-shadow: 0px 4px 5px rgba(0, 0, 0, 0.2);
  border-radius: 5px;
  height: 85px;
  display: flex;
  justify-content: space-between;
  padding-left: 40px;
  @include mq(max_lg) {
    width: 75%;
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
  width: 65px;
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

.kol-url {
  width: 210px;
  input.ant-input {
    font-family: 'Open Sans';
  }
}

.post-date {
  width: 160px;
}

.record-button {
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 40%;
  padding-right: 30px;
  @include mq(max_lg) {
    width: 55%;
    padding-right: 10px;
  }
}

.feed-button,
.reel-button,
.story-button {
  font-family: 'BIZ UDGothic';
  cursor: pointer;
  font-style: normal;
  font-weight: 400;
  font-size: 20px;
  line-height: 20px;
  color: #000000;
}

th {
  min-width: 125px;
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 700;
  font-size: 16px;
  line-height: 23px;
  padding-bottom: 15px;
  padding-right: 10px;
  padding-left: 10px;
  color: #000000;
}

tbody td {
  text-align: center;
}

table {
  width: 120%;
}

.disabled-input {
  background: #FFFFFF;
}

.product-name {
  width: 210px;
}

.cancel-butt {
  color: #000000;
}

.table-button {
  width: 80px;
  border-radius: 3px;
}
.table-button-child {
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 400;
  font-size: 16px;
  line-height: 23px;
  color: #000000;
  width: 57px;
  padding-left: 12px;
}
.table-edit {
  /deep/ {
    input.ant-input.product-name {
      height: 32px !important;
      color: #000000a6;
      font-family: 'BIZ UDGothic';
    }
  }
}

/deep/ {
  .ant-calendar-picker-icon {
    display: none;
  }
  .ant-tabs-bar {
    border: none;
  }
  .ant-tabs-top-bar {
    padding-left: 4px;
  }
  span.ant-calendar-picker {
    margin-right: 0px !important;
  }
  .ant-input-number {
    width: 100px !important;
  }
  .ant-modal-content {
    min-height: 700px;
  }
  .ant-input {
    height: 32px !important;
    font-style: normal !important;
    font-weight: 400 !important;
    font-size: 16px !important;
    line-height: 23px !important;
    color: #000000 !important;
  }
}

@media (min-width: 1329px) and (max-width: 1533.98px) {
  .record-button {
    width: 50%;
  }
  .feed-button,
  .reel-button,
  .story-button {
    font-size: 18px;
  }
  table {
    width: 170%;
  }
  .kol-card {
    width: 74%;
  }
}
@media (min-width: 1536px) and (max-width: 1554.98px) {
  .record-button {
    width: 50%;
  }
  .feed-button,
  .reel-button,
  .story-button {
    font-size: 18px;
  }
  table {
    width: 180%;
  }
  .kol-info {
    width: 60%;
  }
  .kol-card {
    width: 65%;
  }
}
</style>
