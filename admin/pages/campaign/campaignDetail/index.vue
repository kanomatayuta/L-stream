<template>
  <div>
    <a-card>
      <div class="d-flex">
        <a-icon type="arrow-left" class="go_back" @click="goBack()" />
        <h2 style="padding-right: 44px; margin: 0">
          {{ data.name }}
        </h2>
        <font-awesome-icon icon="pencil-alt" @click="showCampaign(data.id)" class="c-pointer" />
      </div>
      <div class="pt-5">
        <a-tabs v-model="activeKey" type="card">
          <a-tab-pane key="1" :tab="$t('campaignDetail.list_up')" style="padding: 0 5px">
            <TabListUp />
          </a-tab-pane>
          <a-tab-pane key="2" :tab="$t('campaignDetail.post')" style="padding: 0 5px">
            <TabPost />
          </a-tab-pane>
          <a-tab-pane key="3" :tab="$t('campaignDetail.report')" style="padding: 0 5px">
            <TabReport />
          </a-tab-pane>
        </a-tabs>
      </div>
    </a-card>
  </div>
</template>
<script>
import DataTable from '~/mixins/data-table'
import TabListUp from '~/components/templates/campaign/TabListUp'
import TabPost from '~/components/templates/campaign/TabPost'
import TabReport from '~/components/templates/campaign/TabReport.vue'
export default {
  components: {
    TabPost,
    TabListUp,
    TabReport
  },

  mixins: [
    DataTable
  ],
  data() {
    return {
      data: {
        id: 12,
        name: 'Instagram Campaign'
      },
      activeKey: '1',
      currentId: 0,
      filters: {},
      defaultParams: {
        not_admin: 1
      }
    }
  },
  methods: {
    /**
     * Go to list
     */
    goBack() {
      this.$router.push({ name: 'campaign' })
    },
    /**
     * Show campaign
     */
    showCampaign(id) {
      this.$router.push(`campaign/${id}`)
    }
  }
}
</script>

<style>
  .d-flex{
    display: flex;
    justify-content: start;
    align-items: center;
  }
  .c-pointer {
    cursor: pointer;
  }
  .button-color{
    background-color: #E8E8E8;
    border-radius: 0;
  }
  .button-color.active{
    background-color: #1890FF;
    color: #ffffff;
  }
  .box__shadow{
    width: 60%;
    box-shadow: rgb(0 0 0 / 10%) 0px 4px 12px;
  }
  .box__content{
    padding: 23px 30px;
  }
  .box__content-csv{
    display: flex;
    justify-content: end;
  }
  .content__csv{
    font-size: 1em;
    font-weight: 700;
    padding-bottom: 20px;
  }
  .button_csv{
    background: #FFFFFF;
    border: 1px solid #1890FF;
    border-radius: 100px;
  }
  .rounded-circle{
      border-radius: 50%;
      width: 65px;
      height: 65px;
      object-fit: cover;
  }
  .ant-tabs-bar{
    border: none;
  }
  .ant-tabs.ant-tabs-card .ant-tabs-card-bar .ant-tabs-tab{
    border-radius: 0;
  }
  .ant-tabs.ant-tabs-card .ant-tabs-card-bar .ant-tabs-tab-active {
    color: #fff !important;
    background: #1890ff !important;
  }
  .go_back{
    font-size: 1.4em;
    font-weight: 700;
    padding-right: 15px;
  }
</style>
