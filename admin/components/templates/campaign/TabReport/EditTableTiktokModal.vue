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
      @submit.prevent="submitYoutube()"
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
        <div class="table-edit">
          <table>
            <tr>
              <th>{{ $t('kol.account_name') }}</th>
              <th>{{ $t('kol.posted_date') }}</th>
              <th>{{ $t('kol.post_url') }}</th>
              <th>{{ $t('campaign_detail.product_name') }}</th>
              <th>{{ $t('campaign.cost') }}</th>
              <th>{{ $t('campaign_detail.number_of_registrants') }}</th>
              <th>{{ $t('campaign_detail.average_play') }}</th>
              <th>{{ $t('campaign_detail.PR_playback') }}</th>
              <th>{{ $t('campaign_detail.how_nice') }}</th>
              <th>{{ $t('campaign_detail.comment_number') }}</th>
              <th>{{ $t('campaign_detail.regular_engagement_rate') }}</th>
              <th>{{ $t('campaign_detail.post_engagement_rate') }}</th>
              <th>{{ $t('campaign_detail.share') }}</th>
              <th>{{ $t('campaign_detail.share_rate') }}</th>
              <th>{{ $t('campaign.revenue') }}</th>
              <th>{{ $t('campaign_detail.roas') }}</th>
            </tr>
            <tr
              v-for="(item, index) in data"
              :key="index"
            >
              <td>{{ item.kol.full_name }}</td>
              <td
                class="post-date"
              >
                <a-date-picker
                  v-model="item.post_date"
                  :format="FORMAT_DATE_SLASH"
                  @change="handleDataChange(item)"
                />
              </td>
              <td
                class="kol-url"
              >
                <a-input
                  v-model="item.post_url"
                  @change="handleDataChange(item)"
                />
              </td>
              <td>
                <a-input
                  v-model="item.product_name"
                  class="product-name"
                  @change="handleDataChange(item)"
                />
              </td>
              <td>{{ commaSeperate(item.campaign_detail.cost) }}</td>
              <td>{{ commaSeperate(item.kol.followers_count) }}</td>
              <td v-if="item.kol.Kol_other_info">{{ commaSeperate(item.kol.Kol_other_info.views_avg) }}</td>
              <td>
                <a-input-number
                  v-model="item.regeneration_pr"
                  :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                  :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                  @change="handleDataChange(item)"
                />
              </td>
              <td>
                <a-input-number
                  v-model="item.good_count"
                  :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                  :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                  :min="0"
                  @change="handleDataChange(item)"
                />
              </td>
              <td>
                <a-input-number
                  v-model="item.comment_count"
                  :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                  :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                  :min="0"
                  @change="handleDataChange(item)"
                />
              </td>
              <td>
                {{ item.kol.engagement_rate }}{{ $t('kol.percentage') }}
              </td>
              <td>
                <a-input-number
                  v-model="item.preg_rate"
                  :disabled="true"
                  :min="0"
                  @change="handleDataChange(item)"
                />
              </td>
              <td>
                <a-input-number
                  v-model="item.share_count"
                  :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                  :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                  :min="0"
                  @change="handleDataChange(item)"
                />
              </td>
              <td>
                <a-input-number
                  v-model="item.share_rate"
                  :disabled="true"
                  :min="0"
                  @change="handleDataChange(item)"
                />
              </td>
              <td>
                <a-input-number
                  v-model="item.earning"
                  :formatter="value => `${value}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')"
                  :parser="value => value.replace(/\''\s?|(,*)/g, '')"
                  :min="0"
                  @change="handleDataChange(item)"
                />
              </td>
              <td>
                <a-input-number
                  v-model="item.roas"
                  :disabled="true"
                  :min="0"
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
      </a-spin>
    </a-form-model>
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
    data: {
      type: Array,
      default: () => []
    },
    kols: {
      type: Array,
      default: () => []
    }
  },

  methods: {
    /**
     * On change feed, reel data
     *
     * @param item
     */
    handleDataChange(item) {
      const follower = parseFloat(item.kol.followers_count)
      const prView = parseFloat(item.regeneration_pr)
      const shareCount = parseFloat(item.share_count)
      const like = parseFloat(item.good_count)
      const comment = parseFloat(item.comment_count)
      const earning = parseFloat(item.earning)
      const money = parseFloat(item.campaign_detail.cost)
      if (isNaN(shareCount) || isNaN(prView) || prView === 0) {
        item.share_rate = 0
      } else {
        item.share_rate = shareCount / prView * 100
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
      this.data.push(clone)
      this.dataChange = true
    },

    /**
     *  Delete one more record
     */
    deleteRecord(record, index) {
      let count = 0
      this.data.map(item => {
        if (item.kol.username === record.kol.username) {
          count++
        }
        return count
      })
      if (count > 1) {
        this.data.splice(index, 1)
        this.dataChange = true
      } else {
        this.$notification.error({
          message: this.$t('delete.failed')
        })
      }
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
  padding-bottom: 70px;
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
  /deep/ {
    input.ant-input.product-name {
      height: 32px !important;
      color: #000000a6;
      font-family: 'BIZ UDGothic';
    }
  }
  .post-date {
    width: 160px;
    /deep/ {
      input.ant-calendar-picker-input.ant-input {
        font-family: 'Open Sans' !important;
      }
    }
  }
}

td {
  padding: 8px 10px 8px 0px;
  font-family: 'Open Sans';
  font-size: 16px;
  .ant-input-number {
    font-size: 16px;
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
  font-family: 'BIZ UDGothic';
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
    font-family: 'Open Sans' !important;
  }
}

.record-button {
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 40%;
  padding-right: 30px;
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
    font-family: 'BIZ UDGothic';
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
