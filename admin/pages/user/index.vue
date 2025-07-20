<template>
  <div>
    <a-card class="mb-4">
      <template slot="title">
        <span class="title"> {{ $t('module.user') }}</span>
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('user.company_name')"
              prop="company_name"
            >
              <a-input
                v-model="filters.company_name"
                :placeholder="$t('user.company_name')"
                :disabled="loading"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('user.plan')"
              prop="plan"
            >
              <a-select
                v-model="filters.plan"
                :placeholder="$t('user.plan')"
                allow-clear
              >
                <a-select-option
                  v-for="plan in plans"
                  :key="plan.id"
                >
                  {{ plan.name }}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('user.payment_status')"
              prop="payment_status"
            >
              <a-select
                v-model="filters.payment_status"
                :placeholder="$t('user.payment_status')"
                allow-clear
              >
                <a-select-option
                  v-for="(plan, index) in PAYMENT_STATUS"
                  :key="index"
                >
                  {{ plan.label }}
                </a-select-option>
              </a-select>
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
              :disabled="loading"
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
              :disabled="loading"
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
        class="user-table"
        :columns="columns"
        :row-key="record => record.id"
        :data-source="data"
        :pagination="pagination"
        :loading="loading"
        @change="handleTableChange"
      >
        <template
          slot="created_at"
          slot-scope="text, record"
        >
          {{ record.created_at ? moment(record.created_at).format('YYYY-MM-DD') : '' }}
        </template>
        <template
          slot="plan_start_date"
          slot-scope="text, record"
        >
          {{ record.plan_start_date ? moment(record.plan_start_date).format('YYYY-MM-DD') : '' }}
        </template>
        <template
          slot="plan_name"
          slot-scope="text, record"
        >
          {{ record.plan ? record.plan.name : '' }}
        </template>
        <template
          slot="payment_status"
          slot-scope="text, record"
        >
          {{ record.payment_status !== null ? getPaymentStatus(record.payment_status) : '' }}
        </template>
        <template
          slot="role_type"
          slot-scope="text, record"
        >
          {{ getRoleName(record.role_type) }}
        </template>

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
            v-if="record.role_type !== ROLE_ADMIN"
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
      :width="1100"
      :footer="null"
      @cancel="visible = false"
    >
      <template slot="title">
        <span class="title-modal">
          {{ currentId ? $t('common.edit') : $t('common.create') }} {{ $t('module.user') }}
        </span>
      </template>

      <a-spin :spinning="loading">
        <user-form
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
import UserForm from '~/components/templates/UserForm'
import DataTable from '~/mixins/data-table'
import { PAYMENT_STATUS, ROLE_ADMIN } from '~/constants'

export default {
  components: {
    UserForm
  },

  mixins: [
    DataTable
  ],
  data() {
    return {
      resource: 'user',
      visible: false,
      currentId: 0,
      moment,
      PAYMENT_STATUS,
      ROLE_ADMIN,
      plans: [],
      filters: {
        company_name: this.$route.query.company_name || '',
        plan: this.$route.query.plan || undefined,
        payment_status: this.$route.query.payment_status || undefined
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
          title: this.$t('user.company_name'),
          dataIndex: 'company_name',
          sorter: true,
          width: 130
        },
        {
          title: this.$t('user.website'),
          sorter: true,
          dataIndex: 'website',
          width: 190
        },
        {
          title: this.$t('user.representative'),
          sorter: true,
          dataIndex: 'representative',
          width: 130
        },
        {
          title: this.$t('user.phone_number'),
          sorter: true,
          dataIndex: 'mobile_no',
          width: 160
        },
        {
          title: this.$t('user.user_email'),
          sorter: true,
          dataIndex: 'email',
          width: 190
        },
        {
          title: this.$t('user.address'),
          sorter: true,
          dataIndex: 'address',
          width: 190
        },
        {
          title: this.$t('user.plan'),
          sorter: true,
          dataIndex: 'plan_name',
          scopedSlots: { customRender: 'plan_name' },
          width: 160
        },
        {
          title: this.$t('user.created'),
          sorter: true,
          dataIndex: 'created_at',
          scopedSlots: { customRender: 'created_at' },
          width: 150
        },
        {
          title: this.$t('plan.start_date'),
          sorter: true,
          dataIndex: 'plan_start_date',
          scopedSlots: { customRender: 'plan_start_date' },
          width: 150
        },
        {
          title: this.$t('user.payment_status'),
          sorter: true,
          dataIndex: 'payment_status_sort',
          scopedSlots: { customRender: 'payment_status' },
          width: 120
        },
        {
          title: this.$t('common.action'),
          dataIndex: 'action',
          scopedSlots: { customRender: 'action' },
          width: 100
        }
      ]
    }
  },

  mounted() {
    this.getPlanList()
  },
  methods: {
    /**
     * Get role name
     */
    getRoleName(role) {
      let roleType = ''
      switch (role) {
        case 1:
          roleType = 'ADMIN'
          break
        case 2:
          roleType = 'USER'
          break
        default:
      }
      return roleType
    },

    /**
     * Get role name
     */
    getPaymentStatus(status) {
      let paymentStatus = ''
      switch (status) {
        case 0:
          paymentStatus = '未決済'
          break
        case 1:
          paymentStatus = '決済済'
          break
        default:
      }
      return paymentStatus
    },

    /**
     * Show detail
     *
     * @param {number} id - Item Id
     */
    showDetail(id) {
      this.currentId = id
      this.visible = true
    },

    /**
     * Close dialog
     *
     * @param {boolean} fetch - fetch status
     */
    closeDialog(fetch) {
      this.visible = false

      if (fetch) {
        this.$fetch()
      }
    },

    /**
     * Clear form search
     */
    reset() {
      this.filters = {
        company_name: '',
        payment_status: undefined,
        plan: undefined
      }
      this.search()
    },

    /**
     * Search data
     */
    search() {
      if (this.$route.query.page) {
        delete this.$route.query.page
      }
      this.replaceQuery(this.filters)
    },

    /**
     * Get Plan List
     */
    async getPlanList() {
      this.$store.dispatch('setLoading', true)

      try {
        const { data: { result: { data } } } = await this.$api.plan.list()
        this.plans = data
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
.user-table {
  :deep() {
    div[title='Sort'] {
      pointer-events: none;
    }
  }
}
.title-modal{
  font-family: 'BIZ UDGothic';
  font-style: normal;
  font-weight: 700;
  font-size: 18px;
  line-height: 18px;
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
  /deep/{
    .ant-table.ant-table-scroll-position-left.ant-table-default {
      overflow-x: auto;
    }
    .ant-table-thead > tr > th .ant-table-header-column {
      font-weight: 700;
    }
  }
</style>
