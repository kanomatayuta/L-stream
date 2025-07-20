<template>
  <div>
    <a-card class="card__padding">
      <template slot="title">
        {{ $t('module.campaign') }}
      </template>

      <template slot="extra">
        <a-button
          html-type="button"
          type="primary"
          ghost
          class="button__new"
          @click="gotoNew()"
        >
          {{ $t('common.new') }}
        </a-button>
      </template>
      <a-form-model
        ref="form"
        :model="filters"
        :label-col="{ sm: 6 }"
        :wrapper-col="{ sm: 18 }"
        class="mb-4"
      >
        <a-row class="search__padding">
          <a-col
            :xs="24"
            :sm="24"
            :md="10"
            :lg="24"
            :xl="10"
            :xxl="10"
          >
            <a-row
              type="flex"
              :gutter="30"
            >
              <a-col
                :xs="24"
                :sm="24"
                :md="10"
                :lg="10"
                :xl="10"
                :xxl="10"
              >
                <a-row>
                  <a-col
                    :xs="8"
                    :sm="8"
                    :md="8"
                    :lg="5"
                    :xl="5"
                    :xxl="5"
                  >
                    <div class="font__label font__family">
                      {{ $t('campaign.sns') }}
                    </div>
                  </a-col>
                  <a-col
                    :xs="16"
                    :sm="16"
                    :md="16"
                    :lg="16"
                    :xl="16"
                    :xxl="16"
                  >
                    <a-select
                      v-model="filters.social"
                      :placeholder="$t('campaign.sns')"
                      @change="search"
                      class="font__family"
                    >
                      <a-select-option
                        v-for="(item, index) in SNS"
                        :key="index"
                        :value="item.value"
                        class="font__family"
                      >
                        {{ item.label }}
                      </a-select-option>
                    </a-select>
                  </a-col>
                </a-row>
              </a-col>
              <a-col
                :xs="24"
                :sm="24"
                :md="14"
                :lg="14"
                :xl="14"
                :xxl="14"
              >
                <a-row>
                  <a-col
                    :xs="8"
                    :sm="8"
                    :md="8"
                    :lg="6"
                    :xl="6"
                    :xxl="6"
                  >
                    <div class="font__label">
                      {{ $t('campaign.genre') }}
                    </div>
                  </a-col>
                  <a-col
                    :xs="16"
                    :sm="16"
                    :md="16"
                    :lg="18"
                    :xl="18"
                    :xxl="18"
                  >
                    <a-select
                      v-model="filters.genre_id"
                      :placeholder="$t('campaign.genre')"
                      @change="search"
                    >
                      <a-select-option
                        v-for="(item, index) in GENRE"
                        :key="index"
                        :value="item.value"
                      >
                        {{ item.label }}
                      </a-select-option>
                    </a-select>
                  </a-col>
                </a-row>
              </a-col>
            </a-row>
          </a-col>
        </a-row>
      </a-form-model>
      <!-- end main-search -->
      <a-table
        :columns="columns"
        :row-key="record => record.id"
        :data-source="dataCampaign"
        :pagination="false"
        :loading="loading"
        :custom-row="customRow"
        class="pointerCampaign"
        @change="handleTableChange"
      >
        <template
          slot="social_type"
          slot-scope="text, record"
        >
          <div class="font__family">
            {{ showSNS(record.social_type) }}
          </div>
        </template>
        <template
          slot="genre"
          slot-scope="text, record"
        >
          <div class="font__family">
            {{ record.genre_id ? record.genre.name : '' }}
          </div>
        </template>
        <template
          slot="total_cost"
          slot-scope="text, record"
        >
          <div class="font__family">
            {{ commaSeperate(record.total_cost) }}
          </div>
        </template>
        <template
          slot="number_of_kol"
          slot-scope="text, record"
        >
          <div class="font__family">
            {{ record.campaign_details_count }}
          </div>
        </template>
        <template
          slot="created_at"
          slot-scope="text, record"
        >
          <div class="font__family">
            {{ moment(record.created_at).format(FORMAT_DATE_SLASH) }}
          </div>
        </template>
        <template
          slot="end_date"
          slot-scope="text, record"
        >
          <div class="font__family">
            {{ record.end_date ? moment(record.end_date).format(FORMAT_DATE_SLASH) : '' }}
          </div>
        </template>
        <template
          slot="reach"
          slot-scope="text, record"
        >
          <div class="font__family">
            {{ commaSeperate(record.total_reach) }}
          </div>
        </template>
        <template
          slot="reach_rate"
          slot-scope="text, record"
        >
          <div class="font__family">
            {{ record.campaign_report ? showDecimal(record.campaign_report.reach_rate) : 0 }}
          </div>
        </template>
        <template
          slot="revenue"
          slot-scope="text, record"
        >
          <div class="font__family">
            {{ record.campaign_report ? commaSeperate(record.campaign_report.revenue) : 0 }}
          </div>
        </template>
        <template
          slot="roas"
          slot-scope="text, record"
        >
          <div class="font__family">
            {{ record.campaign_report ? showDecimal(record.campaign_report.roas) : 0 }}
          </div>
        </template>
        <template
          slot="action"
          slot-scope="text, record"
        >
          <div style="display: flex; justify-content: end">
            <a-button
              v-if="record.is_active == 1"
              html-type="button"
              type="primary"
              size="small"
              ghost
              :disabled="loading"
              class="button_check"
              @click.stop="check(record.is_active, record.id)"
            >
              <a-icon type="stop" />
              {{ $t('button.hide') }}
            </a-button>
            <a-button
              v-else
              html-type="button"
              size="small"
              ghost
              class="button_check"
              style="color: #824493; border-color: #824493"
              :disabled="loading"
              @click.stop="check(record.is_active, record.id)"
            >
              <a-icon type="check-circle" />
              {{ $t('button.show') }}
            </a-button>
            <a-button
              class="ml-2"
              html-type="button"
              type="danger"
              ghost
              size="small"
              :disabled="loading"
              style="border-radius: 0"
              @click.stop="confirmDeleteCamp(record.id)"
            >
              <font-awesome-icon icon="trash-alt" class="pr-1" />
              {{ $t('common.delete') }}
            </a-button>
          </div>
        </template>
      </a-table>
      <ConfirmDeleteCampaign
        :id="currentId"
        :visible="visible"
        @close-modal="close()"
        @confirm="deleteCamp()"
      />
      <!-- end main-table -->
    </a-card>
  </div>
</template>
<script>
import moment from 'moment-timezone'
import Common from '~/mixins/common'
import DataTable from '~/mixins/data-table'
import { FORMAT_DATE_SLASH, SNS, GENRE } from '~/constants'
import ConfirmDeleteCampaign from '~/components/templates/campaign/ConfirmDeleteCampaign'
export default {
  components: {
    ConfirmDeleteCampaign
  },

  mixins: [
    DataTable,
    Common
  ],

  async fetch() {
    this.$store.dispatch('setLoading', true)

    try {
      const params = this.$route.query
      if (params.social_type === '1') {
        delete params.social_type
      }
      if (this.defaultParams && typeof this.defaultParams === 'object') {
        Object.entries(this.defaultParams).forEach(([key, value]) => {
          params[key] = value
        })
      }
      if (params.social === 'all' || params.genre_id === 'all') {
        params.social = params.social === 'all' ? undefined : params.social
        params.genre_id = params.genre_id === 'all' ? undefined : params.genre_id
      }
      const { data: { result: { data, meta } } } = await this.repository.listCampaign({ params })
      this.pagination = {
        ...this.pagination,
        total: meta ? meta.total : data.length,
        current: params.page ? +params.page : 1,
        pageSize: params.limit ? +params.limit : 20
      }
      this.dataCampaign = data
    } catch (_) {
      this.$notification.error({
        message: this.$t('text.something_wrong')
      })
    } finally {
      this.$store.dispatch('setLoading', false)
    }
  },

  data() {
    return {
      resource: 'campaign',
      visible: false,
      SNS,
      GENRE,
      FORMAT_DATE_SLASH,
      moment,
      filters: {
        social: this.$route.query.social || '',
        genre_id: this.$route.query.genre_id || ''
      },
      dataCampaign: [],
      currentId: 0
    }
  },

  computed: {
    header() {
      return [
        {
          title: this.$t('campaign.name'),
          dataIndex: 'name',
          sorter: true,
          scopedSlots: { customRender: 'name' },
          sortDirections: ['ascend', 'descend', 'ascend'],
          width: 170,
          class: 'table__font'
        },

        {
          title: this.$t('campaign.genre'),
          dataIndex: 'genre_name',
          sorter: true,
          scopedSlots: { customRender: 'genre' },
          sortDirections: ['ascend', 'descend', 'ascend'],
          width: 200,
          class: 'table__font'
        },
        {
          title: this.$t('campaign.sns'),
          dataIndex: 'social_type',
          sorter: true,
          scopedSlots: { customRender: 'social_type' },
          sortDirections: ['ascend', 'descend', 'ascend'],
          class: 'table__font font__family'
        },
        {
          title: this.$t('campaign.cost'),
          dataIndex: 'total_cost',
          sorter: true,
          scopedSlots: { customRender: 'total_cost' },
          sortDirections: ['ascend', 'descend', 'ascend'],
          class: 'table__font'
        },
        {
          title: this.$t('campaign.number_of_kol'),
          dataIndex: 'campaign_details_count',
          sorter: true,
          scopedSlots: { customRender: 'number_of_kol' },
          sortDirections: ['ascend', 'descend', 'ascend'],
          class: 'table__font'
        },
        {
          title: this.$t('campaign.create_date'),
          dataIndex: 'created_at',
          sorter: true,
          scopedSlots: { customRender: 'created_at' },
          sortDirections: ['ascend', 'descend', 'ascend'],
          width: 130,
          class: 'table__font'
        },
        {
          title: this.$t('campaign.end_date'),
          dataIndex: 'end_date',
          sorter: true,
          scopedSlots: { customRender: 'end_date' },
          sortDirections: ['ascend', 'descend', 'ascend'],
          width: 130,
          class: 'table__font'
        },
        {
          title: this.$t('campaign.reach'),
          dataIndex: 'total_reach',
          sorter: true,
          scopedSlots: { customRender: 'reach' },
          sortDirections: ['ascend', 'descend', 'ascend'],
          class: 'table__font'
        },
        {
          title: this.$t('campaign.reach_rate'),
          dataIndex: 'reach_rate',
          sorter: true,
          scopedSlots: { customRender: 'reach_rate' },
          sortDirections: ['ascend', 'descend', 'ascend'],
          class: 'table__font'
        },
        {
          title: this.$t('campaign.revenue'),
          dataIndex: 'revenue',
          sorter: true,
          scopedSlots: { customRender: 'revenue' },
          sortDirections: ['ascend', 'descend', 'ascend'],
          class: 'table__font'
        },
        {
          title: this.$t('campaign.roas'),
          dataIndex: 'roas',
          sorter: true,
          scopedSlots: { customRender: 'roas' },
          sortDirections: ['ascend', 'descend', 'ascend'],
          class: 'table__font font__family'
        },
        {
          dataIndex: 'action',
          scopedSlots: { customRender: 'action' }
        }
      ]
    }
  },
  watch: {
    $route() {
      if (Object.keys(this.$route.query).length === 0) {
        this.filters = {
          social: undefined,
          genre_id: undefined
        }
      }
    }
  },
  methods: {
    /**
     * Campaign Detail
     */
    customRow(data) {
      return {
        on: {
          click: () => {
            this.$router.push(`/campaign/campaignDetail/${data.id}`)
          }
        }
      }
    },

    /**
     * Check Show Hide
     */
    async check(isActive, id) {
      this.$store.dispatch('setLoading', true)
      if (isActive === 0 || isActive === 1) {
        if (isActive === 1) {
          await this.repository.updateActive(id, { is_active: 0 })
        } else {
          await this.repository.updateActive(id, { is_active: 1 })
        }
        this.replaceQuery(this.filters)
        this.$notification.success({
          message: this.$t('text.show')
        })
      } else {
        this.$notification.error({
          message: this.$t('text.something_wrong')
        })
      }
      this.$store.dispatch('setLoading', false)
    },

    /**
     * Search data
     */
    search() {
      if (this.$route.query.social_type === '1') {
        delete this.$route.query.social_type
      }
      this.replaceQueryCamp(this.filters)
    },

    /**
     * Replace query
     *
     * @param {Object} Data query
     */
    replaceQueryCamp(data) {
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
        this.$fetch()
      } else {
        this.$router.push({ query })
      }
    },

    /**
     * Show status campaign
     */
    showSNS(status) {
      let socialType = ''
      switch (status) {
        case 1:
          socialType = 'Instagram'
          break
        case 2:
          socialType = 'Youtube'
          break
        case 3:
          socialType = 'Tiktok'
          break
        default:
          // code block
      }
      return socialType
    },

    /**
     * Close delete confirm modal
     */
    close() {
      this.visible = false
    },

    /**
     * Open confirm delete modal
     */
    confirmDeleteCamp(id) {
      this.visible = true
      this.currentId = id
    },
    /**
     *  Delete campaign
     */
    async deleteCamp() {
      this.$store.dispatch('setLoading', true)
      this.visible = false
      try {
        await this.repository.delete(this.currentId)
        this.$notification.success({
          message: this.$t('campaign_confirm_modal.delete_success')
        })
        this.$fetch()
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
.search__padding{
  /deep/ {
    .font__family.ant-select.ant-select-enabled {
      .ant-select-selection-selected-value {
        font-family: 'Open Sans' !important;
      }
    }
  }
}
.pointerCampaign {
  /deep/ {
    .ant-table-thead > tr > th span.ant-table-header-column{
      min-width: 90px;
    }
    div[title='Sort'] {
      pointer-events: none;
    }
  }
}
/deep/{
  .card__padding{
    padding: 0px 24px 24px 24px;
  }
  .ant-card-bordered, .ant-card-head {
    border: none;
  }
  .ant-card-body {
    border: 1px solid #e8e8e8;
  }
  .button__new{
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    line-height: 23px;
    color: #0078C3;
    width: 114px;
    height: 37px;
    border: 1px solid #0078C3;
    border-radius: 5px;
  }
  .search__padding{
    padding: 19px 0px 41px 16px;
  }
  .font__label{
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    line-height: 16px;
    color: #000000;
    padding-top: 11px;
  }
  .table__font {
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    line-height: 16px;
    color: #000000;
  }
  .ant-table-tbody .table__font{
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 400;
    font-size: 16px;
    line-height: 22px;
    color: #000000;
  }
  .ant-table-row {
    height: 102px;
  }
  .pointerCampaign {
    overflow-x:auto;
    cursor: pointer;
  }
  .ant-card-head-title{
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 700;
    font-size: 32px;
    line-height: 32px;
    padding-top: 46px;
    padding-bottom: 40px;
  }
  .ant-btn-danger{
    background: #FFFFFF;
    border: 1px solid #FF0000;
    height: 30px;
    border-radius: 0;
    width: 60px;
  }
  .button_check {
    width: 130px;
    height: 30px;
    border-radius: 0;
  }
  .ant-col.ant-col-sm-6.ant-form-item-label {
    display: flex;
  }
  button.min-w-100.ant-btn.ant-btn-primary {
    margin-top: 3px;
  }
  .ant-table-thead{
    height: 55px;
  }
  .ant-select-selection-selected-value {
    font-family: 'BIZ UDGothic';
    font-weight: 400;
    font-size: 16px;
    color: #000000;
  }
  .font__family{
    font-family: 'Open Sans';
  }
}
@media (min-width: 1201px) and (max-width: 1607.98px) {
  /deep/ {
    .ant-row-flex {
      width: 150%;
    }
  }
}
</style>
