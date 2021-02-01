const { environment } = require('@rails/webpacker')
const env = require('@rails/webpacker/package/env')


const webpack = require('webpack')
environment.plugins.prepend('provide',
  new webpack.ProvidePlugin({
      $: 'jquery/src/jquery',
      jQuery: 'jquery/src/jquery'
  })

)

module.exports = environment
