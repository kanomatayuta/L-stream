<template>
  <div>
    <a-card class="mb-4">
      <template slot="title">
        {{ $t('module.paymentDetail') }}
      </template>

      <template slot="extra">
        <a-button
          html-type="button"
          type="primary"
          ghost
          @click="gotoNew()"
        >
          <font-awesome-icon
            icon="plus-circle"
            class="mr-1"
          />
          {{ $t('common.new') }}
        </a-button>
      </template>

      <a-form-model
        ref="form"
        :model="filters"
        :label-col="{ sm: 6 }"
        :wrapper-col="{ sm: 18 }"
        class="mb-4"
        @submit.prevent="search"
      >
        <a-row
          type="flex"
          :gutter="30"
        >
          <a-col
            :span="24"
            :md="21"
          >
            <a-form-model-item
              :label="$t('paymentDetail.plan_id')"
              prop="plan_id"
            >
              <a-input
                v-model="filters.plan_id"
                :placeholder="$t('paymentDetail.plan_id')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="21"
          >
            <a-form-model-item
              :label="$t('paymentDetail.user_id')"
              prop="user_id"
            >
              <a-input
                v-model="filters.user_id"
                :placeholder="$t('paymentDetail.user_id')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="21"
          >
            <a-form-model-item
              :label="$t('paymentDetail.term_mode')"
              prop="term_mode"
            >
              <a-input
                v-model="filters.term_mode"
                :placeholder="$t('paymentDetail.term_mode')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="21"
          >
            <a-form-model-item
              :label="$t('paymentDetail.money_amount')"
              prop="money_amount"
            >
              <a-input
                v-model="filters.money_amount"
                :placeholder="$t('paymentDetail.money_amount')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="21"
          >
            <a-form-model-item
              :label="$t('paymentDetail.account_search_number')"
              prop="account_search_number"
            >
              <a-input
                v-model="filters.account_search_number"
                :placeholder="$t('paymentDetail.account_search_number')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="21"
          >
            <a-form-model-item
              :label="$t('paymentDetail.page_search_number')"
              prop="page_search_number"
            >
              <a-input
                v-model="filters.page_search_number"
                :placeholder="$t('paymentDetail.page_search_number')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="21"
          >
            <a-form-model-item
              :label="$t('paymentDetail.profile_view_number')"
              prop="profile_view_number"
            >
              <a-input
                v-model="filters.profile_view_number"
                :placeholder="$t('paymentDetail.profile_view_number')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="21"
          >
            <a-form-model-item
              :label="$t('paymentDetail.full_report_number')"
              prop="full_report_number"
            >
              <a-input
                v-model="filters.full_report_number"
                :placeholder="$t('paymentDetail.full_report_number')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="21"
          >
            <a-form-model-item
              :label="$t('paymentDetail.export_csv_number')"
              prop="export_csv_number"
            >
              <a-input
                v-model="filters.export_csv_number"
                :placeholder="$t('paymentDetail.export_csv_number')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="21"
          >
            <a-form-model-item
              :label="$t('paymentDetail.campaign_register_number')"
              prop="campaign_register_number"
            >
              <a-input
                v-model="filters.campaign_register_number"
                :placeholder="$t('paymentDetail.campaign_register_number')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="21"
          >
            <a-form-model-item
              :label="$t('paymentDetail.insight_list_number')"
              prop="insight_list_number"
            >
              <a-input
                v-model="filters.insight_list_number"
                :placeholder="$t('paymentDetail.insight_list_number')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="21"
          >
            <a-form-model-item
              :label="$t('paymentDetail.campaign_list_number')"
              prop="campaign_list_number"
            >
              <a-input
                v-model="filters.campaign_list_number"
                :placeholder="$t('paymentDetail.campaign_list_number')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="21"
          >
            <a-form-model-item
              :label="$t('paymentDetail.start_date')"
              prop="start_date"
            >
              <a-input
                v-model="filters.start_date"
                :placeholder="$t('paymentDetail.start_date')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="21"
          >
            <a-form-model-item
              :label="$t('paymentDetail.end_date')"
              prop="end_date"
            >
              <a-input
                v-model="filters.end_date"
                :placeholder="$t('paymentDetail.end_date')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="21"
          >
            <a-form-model-item
              :label="$t('paymentDetail.payment_status')"
              prop="payment_status"
            >
              <a-input
                v-model="filters.payment_status"
                :placeholder="$t('paymentDetail.payment_status')"
              >
                <font-awesome-icon
                  slot="prefix"
                  icon="heading"
                  style="color:rgba(0,0,0,.25)"
                />
              </a-input>
            </a-form-model-item>
          </a-col>
          <a-col
            :md="24"
            class="text-center"
          >
            <a-button
              html-type="submit"
              type="primary"
              class="min-w-100"
            >
              <font-awesome-icon
                icon="search"
                class="mr-1"
              />
              {{ $t('common.search') }}
            </a-button>

            &nbsp;
            <a-button
              html-type="button"
              type="default"
              class="min-w-100"
              @click="reset"
            >
              <font-awesome-icon
                icon="eraser"
                class="mr-1"
              />
              {{ $t('common.clear') }}
            </a-button>
          </a-col>
        </a-row>
      </a-form-model>
      <!-- end main-search -->

      <a-table
        :columns="columns"
        :row-key="record => record.id"
        :data-source="data"
        :pagination="pagination"
        :loading="loading"
        @change="handleTableChange"
      >
        <template
          slot="action"
          slot-scope="text, record"
        >
          <a-button
            html-type="button"
            type="primary"
            size="small"
            :disabled="loading"
            @click="gotoDetail(record.id)"
          >
            <font-awesome-icon icon="pencil-alt" />
          </a-button>

          <a-button
            html-type="button"
            type="primary"
            size="small"
            :disabled="loading"
            @click="showDetail(record.id)"
          >
            <font-awesome-icon icon="eye" />
          </a-button>

          <a-button
            html-type="button"
            type="danger"
            size="small"
            :disabled="loading"
            @click="confirmToDelete(record.id)"
          >
            <font-awesome-icon icon="trash-alt" />
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
        <font-awesome-icon :icon="`${currentId ? 'pencil-alt' : 'plus-circle'}`" />
        {{ currentId ? $t('common.edit') : $t('common.create') }} {{ $t('module.paymentDetail') }}
      </template>

      <a-spin :spinning="loading">
        <paymentDetail-form
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

import DataTable from '~/mixins/data-table'
import PaymentDetailForm from '~/components/templates/paymentDetail/PaymentDetailForm'

export default {
  components: {
    PaymentDetailForm
  },

  mixins: [
    DataTable
  ],

  data() {
    return {
      resource: 'paymentDetail',
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
          title: this.$t('paymentDetail.plan_id'),
          dataIndex: 'plan_id',
          sorter: true
        },
        {
          title: this.$t('paymentDetail.user_id'),
          dataIndex: 'user_id',
          sorter: true
        },
        {
          title: this.$t('paymentDetail.term_mode'),
          dataIndex: 'term_mode',
          sorter: true
        },
        {
          title: this.$t('paymentDetail.money_amount'),
          dataIndex: 'money_amount',
          sorter: true
        },
        {
          title: this.$t('paymentDetail.account_search_number'),
          dataIndex: 'account_search_number',
          sorter: true
        },
        {
          title: this.$t('paymentDetail.page_search_number'),
          dataIndex: 'page_search_number',
          sorter: true
        },
        {
          title: this.$t('paymentDetail.profile_view_number'),
          dataIndex: 'profile_view_number',
          sorter: true
        },
        {
          title: this.$t('paymentDetail.full_report_number'),
          dataIndex: 'full_report_number',
          sorter: true
        },
        {
          title: this.$t('paymentDetail.export_csv_number'),
          dataIndex: 'export_csv_number',
          sorter: true
        },
        {
          title: this.$t('paymentDetail.campaign_register_number'),
          dataIndex: 'campaign_register_number',
          sorter: true
        },
        {
          title: this.$t('paymentDetail.insight_list_number'),
          dataIndex: 'insight_list_number',
          sorter: true
        },
        {
          title: this.$t('paymentDetail.campaign_list_number'),
          dataIndex: 'campaign_list_number',
          sorter: true
        },
        {
          title: this.$t('paymentDetail.start_date'),
          dataIndex: 'start_date',
          sorter: true
        },
        {
          title: this.$t('paymentDetail.end_date'),
          dataIndex: 'end_date',
          sorter: true
        },
        {
          title: this.$t('paymentDetail.payment_status'),
          dataIndex: 'payment_status',
          sorter: true
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
