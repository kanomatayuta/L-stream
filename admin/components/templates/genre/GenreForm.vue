<template>
  <a-form-model
    ref="form"
    :model="model"
    :rules="formRules"
    :label-col="{ sm: 6, lg: 10, xl: 7, xxl: 6 }"
    :wrapper-col="{ sm: 18, lg: 14, xl: 17, xxl: 18 }"
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
              :label="$t('genre.name')"
              prop="name"
            >
              <a-input
                v-model="model.name"
                :placeholder="$t('genre.name')"
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
      const { data: { result: { data } } } = await this.$api.genre.list()
      this.genres = data
    } catch (_) {
      this.$notification.error({
        message: this.$t('text.something_wrong')
      })
    } finally {
      this.$store.dispatch('setLoading', false)
    }
  },

  data: () => ({
    resource: 'genre',
    genres: []
  }),

  computed: {
    formRules() {
      return {
        name: [
          {
            required: true,
            message: this.$t('validation.required', { field: this.$t('genre.name') }),
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
        name: this.model.name
      }

      return model
    }
  }
}
</script>
