<template>
  <apexchart ref="chart" type="bar" :height="height" :options="chartOptions" :series="series" />
</template>
<script>
export default {
  props: {
    seriesOptions: {
      type: Object,
      default: null
    }
  },
  data() {
    return {
      height: 350,
      series: [{
        name: 'ER',
        data: this.seriesOptions.er_post.data,
        color: '#672599'
      }],
      chartOptions: {
        chart: {
          type: 'bar',
          height: 350,
          stacked: true,
          toolbar: {
            show: false
          },
          zoom: {
            enabled: false
          }
        },
        responsive: [{
          breakpoint: 480,
          options: {
            legend: {
              position: 'bottom',
              offsetX: -10,
              offsetY: 0
            }
          }
        }],
        plotOptions: {
          bar: {
            horizontal: false
          }
        },
        xaxis: {
          categories: this.formatDate()
        },
        yaxis: {
          labels: {
            formatter(value) {
              if (value < 100) {
                return (Math.round(value * 100) / 100) + '%'
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
          show: false,
          position: 'right',
          offsetY: 40
        },
        fill: {
          opacity: 1
        },
        dataLabels: {
          enabled: false
        }
      }
    }
  },
  watch: {
    seriesOptions() {
      this.$refs.chart.updateOptions({
        xaxis: {
          categories: this.formatDate()
        }
      })
      this.$refs.chart.updateSeries([
        {
          name: 'ER',
          data: this.seriesOptions.er_post.data,
          color: '#672599'
        }
      ])
    }
  },

  methods: {
    /**
     * Convert date to YYYY.MM.DD
     */
    formatDate() {
      if (this.seriesOptions.er_post.date) {
        return this.seriesOptions.er_post.date.map(date => {
          const [day, month, year] = date.split('.')
          const result = `${year}.${month}.${day}`
          return result
        })
      }
    }
  }
}
</script>
