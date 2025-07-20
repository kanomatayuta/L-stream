<template>
  <div class="plan">
    <a-card class="mb-4">
      <template slot="title">
        <span class="title">{{ $t('module.plan') }}</span>
      </template>
      <a-table
        class="plan-table"
        :columns="columns"
        :row-key="record => record.id"
        :data-source="data"
        :pagination="false"
        :loading="loading"
        @change="handleTableChange"
      >
        <template
          v-if="record.plan_type !== UPGRADE_PLAN_TYPE.FREE_TRIAL"
          slot="short_term_money_amount"
          slot-scope="text, record"
        >
          {{ commaSeperate(record.short_term_money_amount) }}
        </template>
        <template
          v-if="record.plan_type !== UPGRADE_PLAN_TYPE.FREE_TRIAL && record.plan_type !== UPGRADE_PLAN_TYPE.ORDER_MADE"
          slot="page_search_number"
          slot-scope="text, record"
        >
          {{ commaSeperate(record.page_search_number) }}
        </template>
        <template
          v-if="record.plan_type !== UPGRADE_PLAN_TYPE.FREE_TRIAL && record.plan_type !== UPGRADE_PLAN_TYPE.ORDER_MADE"
          slot="profile_view_number"
          slot-scope="text, record"
        >
          {{ commaSeperate(record.profile_view_number) }}
        </template>
        <template
          v-if="record.plan_type !== UPGRADE_PLAN_TYPE.FREE_TRIAL && record.plan_type !== UPGRADE_PLAN_TYPE.ORDER_MADE"
          slot="export_csv_number"
          slot-scope="text, record"
        >
          {{ commaSeperate(record.export_csv_number) }}
        </template>
        <template
          v-if="record.plan_type !== UPGRADE_PLAN_TYPE.FREE_TRIAL && record.plan_type !== UPGRADE_PLAN_TYPE.ORDER_MADE"
          slot="campaign_register_number"
          slot-scope="text, record"
        >
          {{ commaSeperate(record.campaign_register_number) }}
        </template>
        <template
          slot="action"
          slot-scope="text, record"
        >
          <a-button
            v-if="record.plan_type !== UPGRADE_PLAN_TYPE.ORDER_MADE && record.plan_type !== UPGRADE_PLAN_TYPE.FREE_TRIAL"
            html-type="button"
            type="primary"
            size="small"
            :disabled="loading"
            @click="gotoDetail(record.id)"
          >
            <font-awesome-icon icon="pencil-alt" />
          </a-button>
        </template>
      </a-table>
      <!-- end main-table -->
    </a-card>

    <a-modal
      ref="detail"
      :visible="visible"
      :width="900"
      :footer="null"
      @cancel="visible = false"
    >
      <template slot="title">
        <span class="title-modal">
          <font-awesome-icon :icon="`${currentId ? 'pencil-alt' : 'plus-circle'}`" />
          {{ currentId ? $t('common.edit') : $t('common.create') }} {{ $t('module.plan') }}
        </span>
      </template>

      <a-spin :spinning="loading">
        <plan-form
          :id="currentId"
          @save="closeDialog(true)"
          @cancel="closeDialog(false)"
        />
      </a-spin>
    </a-modal>
    <!-- end modal-detail -->
  </div>
</template>
<script>

import moment from 'moment-timezone'
import Common from '~/mixins/common'
import DataTable from '~/mixins/data-table'
import PlanForm from '~/components/templates/plan/PlanForm'

import {
  UPGRADE_PLAN_TYPE,
  FORMAT_DATE_SLASH
} from '~/constants'
export default {
  components: {
    PlanForm
  },

  mixins: [
    DataTable,
    Common
  ],

  data() {
    return {
      UPGRADE_PLAN_TYPE,
      FORMAT_DATE_SLASH,
      moment,
      resource: 'plan',
      visible: false,
      currentId: 0,
      filters: {
        name: this.$route.query.name || ''
      },
      defaultParams: {
        not_admin: 1
      }
    }
  },

  computed: {
    header() {
      return [
        {
          title: 'ID',
          dataIndex: 'id',
          width: 60
        },
        {
          title: this.$t('plan.name'),
          dataIndex: 'name',
          sorter: true,
          width: 200
        },
        {
          title: this.$t('plan.short_term_money_amount'),
          dataIndex: 'short_term_money_amount',
          scopedSlots: { customRender: 'short_term_money_amount' },
          sorter: true,
          width: 200
        },
        {
          title: this.$t('plan.page_search_number'),
          dataIndex: 'page_search_number',
          scopedSlots: { customRender: 'page_search_number' },
          sorter: true,
          width: 200
        },
        {
          title: this.$t('plan.profile_view_number'),
          dataIndex: 'profile_view_number',
          scopedSlots: { customRender: 'profile_view_number' },
          sorter: true,
          width: 200
        },
        {
          title: this.$t('plan.export_csv_number'),
          dataIndex: 'export_csv_number',
          scopedSlots: { customRender: 'export_csv_number' },
          sorter: true,
          width: 200
        },
        {
          title: this.$t('plan.campaign_register_number'),
          dataIndex: 'campaign_register_number',
          scopedSlots: { customRender: 'campaign_register_number' },
          sorter: true,
          width: 200
        },
        {
          title: this.$t('common.action'),
          dataIndex: 'action',
          scopedSlots: { customRender: 'action' },
          width: 140
        }
      ]
    }
  },

  methods: {
    /**
     * Show detail
     *
     * @param  {number} id - Item Id
     */
    showDetail(id) {
      this.currentId = id
      this.visible = true
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
        name: ''
      }
    },

    /**
     * Search data
     */
    search() {
      this.replaceQuery(this.filters)
    }
  }
}
</script>
<style lang="scss" scoped>
/deep/ {
  tr.ant-table-row.ant-table-row-level-0 {
    font-family: 'Open Sans';
  }
}
.plan{
  font-family: 'BIZ UDGothic';
  font-size: 16px;
  font-weight: 400;
  color: #000000;
}
 .title{
    width: 160px;
    height: 32px;
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 700;
    font-size: 32px;
    line-height: 32px;
    color: #000000;
  }
  .title-modal{
    font-family: 'BIZ UDGothic';
    font-style: normal;
    font-weight: 700;
    font-size: 18px;
    line-height: 18px;
    color: #000000;
  }
  .plan-table {
    overflow-x: auto;
  }
  .date-picker {
    width: 100%;
  }
</style>
