<template>
  <apexchart type="line" :height="height" :options="chartOptions" :series="series" />
</template>
<script>
export default {
  props: {
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
      height: 350,
      series: [{
        name: this.$t('kol.follower_trends'),
        data: this.demographySeries
      }],
      chartOptions: {
        chart: {
          height: 350,
          type: 'line',
          zoom: {
            enabled: false
          },
          toolbar: {
            show: false
          }
        },
        dataLabels: {
          enabled: false
        },
        stroke: {
          curve: 'straight'
        },
        grid: {
          row: {
            colors: ['#f3f3f3', 'transparent'], // takes an array which will be repeated on columns
            opacity: 0.5
          }
        },
        colors: ['#BC11D7FF'],
        markers: {
          size: 5
        },
        xaxis: {
          categories: this.labels,
          tooltip: {
            enabled: true,
            formatter: undefined,
            offsetY: 0,
            style: {
              fontSize: '11px',
              fontFamily: 0
            }
          },
          labels: {
            rotateAlways: true
          }
        },
        yaxis: {
          labels: {
            formatter(value) {
              if (value < 100) {
                return (Math.round(value * 100) / 100)
              }
              if (value >= 1000000) {
                return (value / 1000000).toFixed(1).replace(/.0$/, '') + 'M'
              }
              if (value >= 1000) {
                return (value / 1000).toFixed(1).replace(/.0$/, '') + 'K'
              }
              return value
            }
          }
        }
      }
    }
  },
  watch: {
    demographySeries() {
      this.series[0].data = this.demographySeries
    }
  }
}
</script>
