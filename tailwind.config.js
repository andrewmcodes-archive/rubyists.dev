module.exports = {
  purge: {
    content: [
      './app/views/**/*.html.erb',
      './app/components/**/*.html.erb',
      './app/components/**/*rb',
      './app/helpers/**/*rb',
      './app/javascript/controllers/**/*.js'
    ]
  },
  theme: {
    extend: {}
  },
  variants: {},
  plugins: []
}
