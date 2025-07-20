<template>
  <div>
    <a-card class="mb-4">
      <template slot="title">
        {{ $t('module.campaignDetailPost') }}
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
              :label="$t('campaignDetailPost.campaign_id')"
              prop="campaign_id"
            >
              <a-input
                v-model="filters.campaign_id"
                :placeholder="$t('campaignDetailPost.campaign_id')"
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
              :label="$t('campaignDetailPost.kol_id')"
              prop="kol_id"
            >
              <a-input
                v-model="filters.kol_id"
                :placeholder="$t('campaignDetailPost.kol_id')"
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
              :label="$t('campaignDetailPost.campaign_detail_id')"
              prop="campaign_detail_id"
            >
              <a-input
                v-model="filters.campaign_detail_id"
                :placeholder="$t('campaignDetailPost.campaign_detail_id')"
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
              :label="$t('campaignDetailPost.post_date')"
              prop="post_date"
            >
              <a-input
                v-model="filters.post_date"
                :placeholder="$t('campaignDetailPost.post_date')"
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
              :label="$t('campaignDetailPost.post_url')"
              prop="post_url"
            >
              <a-input
                v-model="filters.post_url"
                :placeholder="$t('campaignDetailPost.post_url')"
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
              :label="$t('campaignDetailPost.product_name')"
              prop="product_name"
            >
              <a-input
                v-model="filters.product_name"
                :placeholder="$t('campaignDetailPost.product_name')"
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
              :label="$t('campaignDetailPost.amount_money')"
              prop="amount_money"
            >
              <a-input
                v-model="filters.amount_money"
                :placeholder="$t('campaignDetailPost.amount_money')"
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
              :label="$t('campaignDetailPost.number_registration')"
              prop="number_registration"
            >
              <a-input
                v-model="filters.number_registration"
                :placeholder="$t('campaignDetailPost.number_registration')"
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
              :label="$t('campaignDetailPost.regeneration_avg')"
              prop="regeneration_avg"
            >
              <a-input
                v-model="filters.regeneration_avg"
                :placeholder="$t('campaignDetailPost.regeneration_avg')"
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
              :label="$t('campaignDetailPost.regeneration_pr')"
              prop="regeneration_pr"
            >
              <a-input
                v-model="filters.regeneration_pr"
                :placeholder="$t('campaignDetailPost.regeneration_pr')"
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
              :label="$t('campaignDetailPost.good_count')"
              prop="good_count"
            >
              <a-input
                v-model="filters.good_count"
                :placeholder="$t('campaignDetailPost.good_count')"
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
              :label="$t('campaignDetailPost.comment_count')"
              prop="comment_count"
            >
              <a-input
                v-model="filters.comment_count"
                :placeholder="$t('campaignDetailPost.comment_count')"
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
              :label="$t('campaignDetailPost.normal_eg_rate')"
              prop="normal_eg_rate"
            >
              <a-input
                v-model="filters.normal_eg_rate"
                :placeholder="$t('campaignDetailPost.normal_eg_rate')"
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
              :label="$t('campaignDetailPost.preg_rate')"
              prop="preg_rate"
            >
              <a-input
                v-model="filters.preg_rate"
                :placeholder="$t('campaignDetailPost.preg_rate')"
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
              :label="$t('campaignDetailPost.share_count')"
              prop="share_count"
            >
              <a-input
                v-model="filters.share_count"
                :placeholder="$t('campaignDetailPost.share_count')"
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
              :label="$t('campaignDetailPost.share_rate')"
              prop="share_rate"
            >
              <a-input
                v-model="filters.share_rate"
                :placeholder="$t('campaignDetailPost.share_rate')"
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
              :label="$t('campaignDetailPost.earning')"
              prop="earning"
            >
              <a-input
                v-model="filters.earning"
                :placeholder="$t('campaignDetailPost.earning')"
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
              :label="$t('campaignDetailPost.roas')"
              prop="roas"
            >
              <a-input
                v-model="filters.roas"
                :placeholder="$t('campaignDetailPost.roas')"
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
        {{ currentId ? $t('common.edit') : $t('common.create') }} {{ $t('module.campaignDetailPost') }}
      </template>

      <a-spin :spinning="loading">
        <campaignDetailPost-form
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
import CampaignDetailPostForm from '~/components/templates/campaign/CampaignDetailPostForm'

export default {
  components: {
    CampaignDetailPostForm
  },

  mixins: [
    DataTable
  ],

  data() {
    return {
      resource: 'campaignDetailPost',
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
          title: this.$t('campaignDetailPost.campaign_id'),
          dataIndex: 'campaign_id',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.kol_id'),
          dataIndex: 'kol_id',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.campaign_detail_id'),
          dataIndex: 'campaign_detail_id',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.post_date'),
          dataIndex: 'post_date',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.post_url'),
          dataIndex: 'post_url',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.product_name'),
          dataIndex: 'product_name',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.amount_money'),
          dataIndex: 'amount_money',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.number_registration'),
          dataIndex: 'number_registration',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.regeneration_avg'),
          dataIndex: 'regeneration_avg',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.regeneration_pr'),
          dataIndex: 'regeneration_pr',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.good_count'),
          dataIndex: 'good_count',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.comment_count'),
          dataIndex: 'comment_count',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.normal_eg_rate'),
          dataIndex: 'normal_eg_rate',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.preg_rate'),
          dataIndex: 'preg_rate',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.share_count'),
          dataIndex: 'share_count',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.share_rate'),
          dataIndex: 'share_rate',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.earning'),
          dataIndex: 'earning',
          sorter: true
        },
        {
          title: this.$t('campaignDetailPost.roas'),
          dataIndex: 'roas',
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
