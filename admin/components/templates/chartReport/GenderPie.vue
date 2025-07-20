<template>
  <apexchart :width="width" height="auto" type="donut" :options="demographyChartOptions" :series="demographySeries" />
</template>
<script>
export default {
  props: {
    width: {
      type: Number,
      default: 220
    },
    labels: {
      type: Array,
      default: null
    },
    demographySeries: {
      type: Array,
      default: null
    }
  },
  data() {
    return {
      demographyChartOptions: {
        dataLabels: {
          enabled: false
        },
        labels: this.labels,
        colors: ['#9A83ED', '#1890FF'],
        chart: {
          type: 'donut'
        },
        legend: {
          show: true,
          position: 'bottom'
        },
        stroke: {
          width: 0
        },
        responsive: [{
          breakpoint: 200,
          options: {
            chart: {
              width: 200
            },
            legend: {
              show: false,
              position: 'bottom',
              horizontalAlign: 'bottom'
            }
          }
        }]
      }
    }
  }
}
</script>
