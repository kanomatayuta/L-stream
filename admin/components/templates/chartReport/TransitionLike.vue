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
          data: [150000, 180000, 190000, 200000, 300000, 320000, 380000]
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
          size: 1
        },
        xaxis: {
          categories: ['2022-03', '2022-04', '2022-05', '2022-06', '2022-07', '2022-08', '2022-09']
        },
        yaxis: {
          labels: {
            formatter(value) {
              if (value > 1000) {
                const parts = ['K', 'M', 'B', 'T']
                const number = Math.round(value)
                const numberFormat = (number).toLocaleString(
                  undefined
                )
                const convertNumber = (numberFormat).split(',')
                const countParts = convertNumber.length - 1
                const display = convertNumber[0] + (parseInt(convertNumber[1][0]) !== 0 ? '.' + convertNumber[1][0] : '') + parts[countParts - 1]
                return display
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
  }
}
</script>
