code_climate = Organization.create!(name: "Code Climate", url: "https://codeclimate.com", company: true, pricing_strategy: :hybrid)

Badge.create!(
  [
    {
      title: "Maintainability",
      asset_url: "https://api.codeclimate.com/v1/badges/015a1b40a1400b2f6658/maintainability",
      source_url: "https://codeclimate.com/github/andrewmcodes/rubyists.dev/maintainability",
      organization: code_climate
    },
    {
      title: "Test Coverage",
      asset_url: "https://api.codeclimate.com/v1/badges/015a1b40a1400b2f6658/test_coverage",
      source_url: "https://codeclimate.com/github/andrewmcodes/rubyists.dev/test_coverage",
      organization: code_climate
    }
  ]
)
