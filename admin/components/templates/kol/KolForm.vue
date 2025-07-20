<template>
  <a-form-model
    ref="form"
    :model="model"
    :rules="formRules"
    :label-col="{ sm: 6 }"
    :wrapper-col="{ sm: 18 }"
    @submit.prevent="handleSubmit"
  >
    <a-spin :spinning="loading">
      <div class="p-4">
        <a-row
          type="flex"
          :gutter="30"
        >
          <a-col
            :span="24"
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.social_type')"
              prop="social_type"
            >
              <a-input
                v-model="model.social_type"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.social_id')"
              prop="social_id"
            >
              <a-input
                v-model="model.social_id"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.full_name')"
              prop="full_name"
            >
              <a-input
                v-model="model.full_name"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.username')"
              prop="username"
            >
              <a-input
                v-model="model.username"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.gender')"
              prop="gender"
            >
              <a-input
                v-model="model.gender"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.age')"
              prop="age"
            >
              <a-input
                v-model="model.age"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.marital_status')"
              prop="marital_status"
            >
              <a-input
                v-model="model.marital_status"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.birthday')"
              prop="birthday"
            >
              <a-input
                v-model="model.birthday"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.description')"
              prop="description"
            >
              <a-input
                v-model="model.description"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.avatar_url')"
              prop="avatar_url"
            >
              <a-input
                v-model="model.avatar_url"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.last_post_time')"
              prop="last_post_time"
            >
              <a-input
                v-model="model.last_post_time"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.like_avg')"
              prop="like_avg"
            >
              <a-input
                v-model="model.like_avg"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.comment_avg')"
              prop="comment_avg"
            >
              <a-input
                v-model="model.comment_avg"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.posts_count')"
              prop="posts_count"
            >
              <a-input
                v-model="model.posts_count"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.followers_count')"
              prop="followers_count"
            >
              <a-input
                v-model="model.followers_count"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.engagement_count')"
              prop="engagement_count"
            >
              <a-input
                v-model="model.engagement_count"
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
            :md="12"
          >
            <a-form-model-item
              :label="$t('kol.engagement_rate')"
              prop="engagement_rate"
            >
              <a-input
                v-model="model.engagement_rate"
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
        </a-row>
      </div>
      <div class="text-center p-3">
        <a-button
          html-type="submit"
          type="primary"
          class="min-w-100"
        >
          {{ id ? $t('common.update') : $t('common.create') }}
        </a-button>

        &nbsp;
        <a-button
          html-type="button"
          type="default"
          class="min-w-100"
          @click="$emit('cancel')"
        >
          {{ $t('common.cancel') }}
        </a-button>
      </div>
    </a-spin>
  </a-form-model>
</template>

<script>
import DataForm from '~/mixins/data-form'

export default {
  mixins: [DataForm],

  async fetch() {
    this.$store.dispatch('setLoading', true)

    try {
      // Call api and processing.
      const { data: { result: { data } } } = await this.$api.kol.list()
      this.kols = data
    } catch (_) {
      this.$notification.error({
        message: this.$t('text.something_wrong')
      })
    } finally {
      this.$store.dispatch('setLoading', false)
    }
  },

  data: () => ({
    resource: 'kol',
    kols: []
  }),

  computed: {
    formRules() {
      return {
        social_type: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.social_type') }),
            trigger: ['change', 'blur']
          }
        ],
        social_id: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.social_id') }),
            trigger: ['change', 'blur']
          }
        ],
        full_name: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.full_name') }),
            trigger: ['change', 'blur']
          }
        ],
        username: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.username') }),
            trigger: ['change', 'blur']
          }
        ],
        gender: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.gender') }),
            trigger: ['change', 'blur']
          }
        ],
        age: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.age') }),
            trigger: ['change', 'blur']
          }
        ],
        marital_status: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.marital_status') }),
            trigger: ['change', 'blur']
          }
        ],
        birthday: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.birthday') }),
            trigger: ['change', 'blur']
          }
        ],
        description: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.description') }),
            trigger: ['change', 'blur']
          }
        ],
        avatar_url: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.avatar_url') }),
            trigger: ['change', 'blur']
          }
        ],
        last_post_time: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.last_post_time') }),
            trigger: ['change', 'blur']
          }
        ],
        like_avg: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.like_avg') }),
            trigger: ['change', 'blur']
          }
        ],
        comment_avg: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.comment_avg') }),
            trigger: ['change', 'blur']
          }
        ],
        posts_count: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.posts_count') }),
            trigger: ['change', 'blur']
          }
        ],
        followers_count: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.followers_count') }),
            trigger: ['change', 'blur']
          }
        ],
        engagement_count: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.engagement_count') }),
            trigger: ['change', 'blur']
          }
        ],
        engagement_rate: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('kol.engagement_rate') }),
            trigger: ['change', 'blur']
          }
        ]
      }
    }
  },

  methods: {
    /**
     * Get model
     *
     * @returns  {Object}
     */
    getModel() {
      const model = {
        social_type: this.model.social_type,
        social_id: this.model.social_id,
        full_name: this.model.full_name,
        username: this.model.username,
        gender: this.model.gender,
        age: this.model.age,
        marital_status: this.model.marital_status,
        birthday: this.model.birthday,
        description: this.model.description,
        avatar_url: this.model.avatar_url,
        last_post_time: this.model.last_post_time,
        like_avg: this.model.like_avg,
        comment_avg: this.model.comment_avg,
        posts_count: this.model.posts_count,
        followers_count: this.model.followers_count,
        engagement_count: this.model.engagement_count,
        engagement_rate: this.model.engagement_rate
      }

      return model
    }
  }
}
</script>
