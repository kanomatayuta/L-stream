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
      series: [
        {
          name: this.$t('kol.follow_up_trend'),
          data: this.demographySeries
        }
      ],
      chartOptions: {
        chart: {
          height: 350,
          type: 'line',
          dropShadow: {
            enabled: true,
            color: '#000',
            top: 18,
            left: 7,
            blur: 10,
            opacity: 0.2
          },
          toolbar: {
            show: false
          }
        },
        colors: ['#BC11D7FF'],
        dataLabels: {
          enabled: false
        },
        stroke: {
          curve: 'smooth'
        },
        grid: {
          borderColor: '#e7e7e7',
          row: {
            colors: ['#f3f3f3', 'transparent'], // takes an array which will be repeated on columns
            opacity: 0.5
          }
        },
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
        },
        legend: {
          position: 'top',
          horizontalAlign: 'right',
          floating: true,
          offsetY: -25,
          offsetX: -5
        }
      }
    }
  },
  watch: {
    demographySeries() {
      this.series[0].data = this.demographySeries
    },
    labels() {
      this.chartOptions.xaxis.categories = this.labels
    }
  }
}
</script>
