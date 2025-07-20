<template>
  <div>
    <a-card class="mb-4">
      <template slot="title">
        {{ $t('module.kol') }}
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
              :label="$t('kol.social_type')"
              prop="social_type"
            >
              <a-input
                v-model="filters.social_type"
                :placeholder="$t('kol.social_type')"
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
              :label="$t('kol.social_id')"
              prop="social_id"
            >
              <a-input
                v-model="filters.social_id"
                :placeholder="$t('kol.social_id')"
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
              :label="$t('kol.full_name')"
              prop="full_name"
            >
              <a-input
                v-model="filters.full_name"
                :placeholder="$t('kol.full_name')"
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
              :label="$t('kol.username')"
              prop="username"
            >
              <a-input
                v-model="filters.username"
                :placeholder="$t('kol.username')"
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
              :label="$t('kol.gender')"
              prop="gender"
            >
              <a-input
                v-model="filters.gender"
                :placeholder="$t('kol.gender')"
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
              :label="$t('kol.age')"
              prop="age"
            >
              <a-input
                v-model="filters.age"
                :placeholder="$t('kol.age')"
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
              :label="$t('kol.marital_status')"
              prop="marital_status"
            >
              <a-input
                v-model="filters.marital_status"
                :placeholder="$t('kol.marital_status')"
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
              :label="$t('kol.birthday')"
              prop="birthday"
            >
              <a-input
                v-model="filters.birthday"
                :placeholder="$t('kol.birthday')"
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
              :label="$t('kol.description')"
              prop="description"
            >
              <a-input
                v-model="filters.description"
                :placeholder="$t('kol.description')"
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
              :label="$t('kol.avatar_url')"
              prop="avatar_url"
            >
              <a-input
                v-model="filters.avatar_url"
                :placeholder="$t('kol.avatar_url')"
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
              :label="$t('kol.last_post_time')"
              prop="last_post_time"
            >
              <a-input
                v-model="filters.last_post_time"
                :placeholder="$t('kol.last_post_time')"
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
              :label="$t('kol.like_avg')"
              prop="like_avg"
            >
              <a-input
                v-model="filters.like_avg"
                :placeholder="$t('kol.like_avg')"
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
              :label="$t('kol.comment_avg')"
              prop="comment_avg"
            >
              <a-input
                v-model="filters.comment_avg"
                :placeholder="$t('kol.comment_avg')"
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
              :label="$t('kol.posts_count')"
              prop="posts_count"
            >
              <a-input
                v-model="filters.posts_count"
                :placeholder="$t('kol.posts_count')"
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
              :label="$t('kol.followers_count')"
              prop="followers_count"
            >
              <a-input
                v-model="filters.followers_count"
                :placeholder="$t('kol.followers_count')"
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
              :label="$t('kol.engagement_count')"
              prop="engagement_count"
            >
              <a-input
                v-model="filters.engagement_count"
                :placeholder="$t('kol.engagement_count')"
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
              :label="$t('kol.engagement_rate')"
              prop="engagement_rate"
            >
              <a-input
                v-model="filters.engagement_rate"
                :placeholder="$t('kol.engagement_rate')"
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
        {{ currentId ? $t('common.edit') : $t('common.create') }} {{ $t('module.kol') }}
      </template>

      <a-spin :spinning="loading">
        <kol-form
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
import KolForm from '~/components/templates/kol/KolForm'

export default {
  components: {
    KolForm
  },

  mixins: [
    DataTable
  ],

  data() {
    return {
      resource: 'kol',
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
          title: this.$t('kol.social_type'),
          dataIndex: 'social_type',
          sorter: true
        },
        {
          title: this.$t('kol.social_id'),
          dataIndex: 'social_id',
          sorter: true
        },
        {
          title: this.$t('kol.full_name'),
          dataIndex: 'full_name',
          sorter: true
        },
        {
          title: this.$t('kol.username'),
          dataIndex: 'username',
          sorter: true
        },
        {
          title: this.$t('kol.gender'),
          dataIndex: 'gender',
          sorter: true
        },
        {
          title: this.$t('kol.age'),
          dataIndex: 'age',
          sorter: true
        },
        {
          title: this.$t('kol.marital_status'),
          dataIndex: 'marital_status',
          sorter: true
        },
        {
          title: this.$t('kol.birthday'),
          dataIndex: 'birthday',
          sorter: true
        },
        {
          title: this.$t('kol.description'),
          dataIndex: 'description',
          sorter: true
        },
        {
          title: this.$t('kol.avatar_url'),
          dataIndex: 'avatar_url',
          sorter: true
        },
        {
          title: this.$t('kol.last_post_time'),
          dataIndex: 'last_post_time',
          sorter: true
        },
        {
          title: this.$t('kol.like_avg'),
          dataIndex: 'like_avg',
          sorter: true
        },
        {
          title: this.$t('kol.comment_avg'),
          dataIndex: 'comment_avg',
          sorter: true
        },
        {
          title: this.$t('kol.posts_count'),
          dataIndex: 'posts_count',
          sorter: true
        },
        {
          title: this.$t('kol.followers_count'),
          dataIndex: 'followers_count',
          sorter: true
        },
        {
          title: this.$t('kol.engagement_count'),
          dataIndex: 'engagement_count',
          sorter: true
        },
        {
          title: this.$t('kol.engagement_rate'),
          dataIndex: 'engagement_rate',
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
