process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')

// WEBPACK_ANALYZE=true RAILS_ENV=production NODE_ENV=production ./bin/webpack
if (process.env.WEBPACK_ANALYZE === 'true') {
  const BundleAnalyzerPlugin = require('webpack-bundle-analyzer')
    .BundleAnalyzerPlugin
  environment.plugins.append('BundleAnalyzerPlugin', new BundleAnalyzerPlugin())
}

module.exports = environment.toWebpackConfig()
