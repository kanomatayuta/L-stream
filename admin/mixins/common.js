export default {
  methods: {
    /**
     * Convert number type
     *
     * @param {string} num - number to convert
     *
     * @returns
     */
    getNumber(num) {
      if (num < 100) {
        return (Math.round(num * 100) / 100) + this.$t('kol.percentage')
      }
      if (num >= 1000000) {
        return (num / 1000000).toFixed(1).replace(/.0$/, '') + this.$t('kol.million')
      }
      if (num >= 1000) {
        return (num / 1000).toFixed(1).replace(/.0$/, '') + this.$t('kol.thousand')
      }
      if (num >= 1000000000) {
        return (num / 1000000000).toFixed(1).replace(/.0$/, '') + this.$t('kol.billion')
      }
      return num
    },
    /**
     * Convert number avg
     *
     * @param {string} num - number to convert
     *
     * @returns
     */
    getNumberAvg(num) {
      if (num < 100) {
        return Math.floor(num)
      }
      if (num >= 1000000) {
        return (num / 1000000).toFixed(1).replace(/.0$/, '') + this.$t('kol.million')
      }
      if (num >= 1000) {
        return (num / 1000).toFixed(1).replace(/.0$/, '') + this.$t('kol.thousand')
      }
      if (num >= 1000000000) {
        return (num / 1000000000).toFixed(1).replace(/.0$/, '') + this.$t('kol.billion')
      }
      return num
    },
    /**
     * Convert number with commas
     *
     * @param {string} num - number to convert
     *
     * @returns
     */
    numberWithCommas(num) {
      if (num >= 1000) {
        return num.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ',')
      }

      return num
    },

    /*
     * Remove decimal of number
     */
    removeDecimal(num) {
      return Math.trunc(num).toLocaleString()
    },

    /*
     * Show 1 decimal element
     */
    showDecimal(num) {
      return Math.round(num * 10) / 10
    },

    /*
     *  Number thoudsand seperate with comma
     */
    commaSeperate(num) {
      return Math.trunc(num).toLocaleString('en')
    },

    /**
     * Calculate percentage
     *
     * @param {string} num
     * @param {string} total
     * @returns
     */
    calculatePercentage(num = 0, total = 0) {
      return (num / total) * 100
    }
  }
}
