<template>
  <apexchart :height="height" :width="width" :options="chartOptionsColumns" :series="seriesColumns" />
</template>
<script>
export default {
  props: {
    height: {
      type: Number,
      default: 380
    },
    width: {
      type: Number,
      default: 440
    },
    seriesColumns: {
      type: Array,
      default: null
    }
  },
  data() {
    return {
      chartOptionsColumns: {
        legend: {
          show: false
        },
        distributed: true,
        chart: {
          type: 'bar',
          height: this.height,
          width: '30%',
          toolbar: {
            show: false
          }
        },
        plotOptions: {
          bar: {
            barHeight: '100%',
            horizontal: false,
            endingShape: 'rounded',
            columnWidth: '55%',
            borderRadius: 10,
            dataLabels: {
              position: 'bottom'
            }
          }
        },
        textAnchor: 'middle',
        dataLabels: {
          enabled: false,
          formatter(val, opts) {
            return val + ' %'
          },
          style: {
            fontSize: '12px',
            colors: ['#000', '#000']
          },
          textAnchor: 'start'
        },
        stroke: {
          show: true,
          width: 2,
          colors: ['transparent']
        },
        xaxis: {
          categories: ['13-17', '18-24', '25-34', '35-44', '45-64'],
          position: 'bottom',
          crosshairs: {
            show: false
          },
          title: {
            text: undefined,
            offsetX: 0,
            offsetY: 0,
            style: {
              color: undefined,
              fontSize: '12px',
              fontFamily: 'Helvetica, Arial, sans-serif',
              fontWeight: 600,
              cssClass: 'apexcharts-xaxis-title'
            }
          }
        },
        yaxis: {
          show: false,
          position: 'bottom'
        },
        fill: {
          opacity: 1,
          colors: ['#9A83ED', '#1890FF']
        },
        tooltip: {
          enabled: true,
          y: {
            formatter(val, opts) {
              return (Math.round(val * 100) / 100) + ' %'
            }
          }
        }
      }
    }
  }
}
</script>
