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
              :label="$t('tag.user_id')"
              prop="user_id"
            >
              <a-input
                v-model="model.user_id"
                :placeholder="$t('tag.user_id')"
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
              :label="$t('tag.kol_id')"
              prop="kol_id"
            >
              <a-input
                v-model="model.kol_id"
                :placeholder="$t('tag.kol_id')"
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
              :label="$t('tag.campaign_id')"
              prop="campaign_id"
            >
              <a-input
                v-model="model.campaign_id"
                :placeholder="$t('tag.campaign_id')"
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
              :label="$t('tag.hash_tags')"
              prop="hash_tags"
            >
              <a-input
                v-model="model.hash_tags"
                :placeholder="$t('tag.hash_tags')"
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
      const { data: { result: { data } } } = await this.$api.tag.list()
      this.tags = data
    } catch (_) {
      this.$notification.error({
        message: this.$t('text.something_wrong')
      })
    } finally {
      this.$store.dispatch('setLoading', false)
    }
  },

  data: () => ({
    resource: 'tag',
    tags: []
  }),

  computed: {
    formRules() {
      return {
        user_id: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('tag.user_id') }),
            trigger: ['change', 'blur']
          }
        ],
        kol_id: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('tag.kol_id') }),
            trigger: ['change', 'blur']
          }
        ],
        campaign_id: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('tag.campaign_id') }),
            trigger: ['change', 'blur']
          }
        ],
        hash_tags: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('tag.hash_tags') }),
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
        user_id: this.model.user_id,
        kol_id: this.model.kol_id,
        campaign_id: this.model.campaign_id,
        hash_tags: this.model.hash_tags
      }

      return model
    }
  }
}
</script>
