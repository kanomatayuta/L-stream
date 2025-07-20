/*
 * Copyright 2020 Digi Dinos JSC. All rights reserved.
 * Email: tech@digidinos.com.
 */

import Vue from 'vue'
import VueApexCharts from 'vue-apexcharts'

import {
  Button,
  Card,
  Checkbox,
  Col,
  Collapse,
  ConfigProvider,
  Divider,
  Dropdown,
  FormModel,
  Icon,
  Input,
  Layout,
  Menu,
  Modal,
  notification,
  Rate,
  Result,
  Row,
  Select,
  Spin,
  Table,
  Tag,
  Tooltip,
  Tree,
  DatePicker,
  Radio,
  Tabs,
  Upload,
  Progress,
  Skeleton,
  Switch,
  Drawer,
  InputNumber
} from 'ant-design-vue'

Vue.use(Button)
Vue.use(Card)
Vue.use(Checkbox)
Vue.use(Col)
Vue.use(Collapse)
Vue.use(ConfigProvider)
Vue.use(Divider)
Vue.use(Divider)
Vue.use(Dropdown)
Vue.use(FormModel)
Vue.use(Icon)
Vue.use(Input)
Vue.use(Layout)
Vue.use(Menu)
Vue.use(Modal)
Vue.use(Rate)
Vue.use(Rate)
Vue.use(Result)
Vue.use(Row)
Vue.use(Select)
Vue.use(Spin)
Vue.use(Table)
Vue.use(Tag)
Vue.use(Tooltip)
Vue.use(Tree)
Vue.use(Tag)
Vue.use(Rate)
Vue.use(DatePicker)
Vue.use(Radio)
Vue.use(Tabs)
Vue.use(Upload)
Vue.use(Progress)
Vue.use(Switch)
Vue.use(Skeleton)
Vue.use(Drawer)
Vue.use(InputNumber)

Vue.prototype.$notification = notification
Vue.prototype.$confirm = Modal.confirm
Vue.prototype.$info = Modal.info
Vue.component('apexchart', VueApexCharts)
