code_climate = Organization.create!(name: "Code Climate", url: "https://codeclimate.com", company: true, pricing_strategy: :hybrid)
hakiri = Organization.create!(name: "Hakiri", url: "https://hakiri.io", company: true, pricing_strategy: :hybrid)
depfu = Organization.create!(name: "Depfu", url: "https://depfu.com", company: true, pricing_strategy: :hybrid)
snyk = Organization.create!(name: "Snyk", url: "https://snyk.io", company: true, pricing_strategy: :hybrid)
circleci = Organization.create!(name: "CircleCI", url: "https://circleci.com", company: true, pricing_strategy: :hybrid)
travis = Organization.create!(name: "Travis CI", url: "https://travis-ci.org", company: true, pricing_strategy: :hybrid)
codacy = Organization.create!(name: "Codacy", url: "https://codacy.com", company: true, pricing_strategy: :hybrid)
codebeat = Organization.create!(name: "Codebeat", url: "https://codebeat.co", company: true, pricing_strategy: :hybrid)

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
    },
    {
      title: "security",
      asset_url: "https://hakiri.io/github/andrewmcodes/rubyists.dev/master.svg",
      source_url: "https://hakiri.io/github/andrewmcodes/rubyists.dev/master",
      organization: hakiri
    },
    {
      title: "Depfu Status",
      asset_url: "https://badges.depfu.com/badges/df001d8bf70aa2e0a1b099af9a181d8e/status.svg",
      source_url: "https://depfu.com",
      organization: depfu
    },
    {
      title: "Bundler: Count of outdated dependencies",
      asset_url: "https://badges.depfu.com/badges/035f8ba9007bb88cfddf642ff4a31beb/count.svg",
      source_url: "https://depfu.com/github/andrewmcodes/rubyists.dev?project_id=13364",
      organization: depfu
    },
    {
      title: "Yarn: Count of outdated dependencies",
      asset_url: "https://badges.depfu.com/badges/df001d8bf70aa2e0a1b099af9a181d8e/count.svg",
      source_url: "https://depfu.com/github/andrewmcodes/rubyists.dev?project_id=13365",
      organization: depfu
    },
    {
      title: "Known Vulnerabilities",
      asset_url: "https://snyk.io/test/github/andrewmcodes/rubyists.dev/badge.svg",
      source_url: "https://snyk.io/test/github/andrewmcodes/rubyists.dev",
      organization: snyk
    },
    {
      title: "CircleCI",
      asset_url: "https://circleci.com/gh/andrewmcodes/rubyists.dev.svg?style=svg",
      source_url: "https://circleci.com/gh/andrewmcodes/rubyists.dev",
      organization: circleci
    },
    {
      title: "Build Status",
      asset_url: "https://travis-ci.org/andrewmcodes/rubyists.dev.svg?branch=master",
      source_url: "https://travis-ci.org/andrewmcodes/rubyists.dev",
      organization: travis
    },
    {
      title: "Codebeat Badge",
      asset_url: "https://codebeat.co/badges/d01df093-17b0-4043-86f0-87a6c0fb0d02",
      source_url: "https://codebeat.co/projects/github-com-andrewmcodes-rubyists-dev-master",
      organization: codebeat
    },
    {
      title: "Codacy Badge",
      asset_url: "https://app.codacy.com/project/badge/Grade/6b88d9ceaba9469aa8f622e499e84f35",
      source_url: "https://www.codacy.com/manual/andrewmcodes/rubyists.dev?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=andrewmcodes/rubyists.dev&amp;utm_campaign=Badge_Grade",
      organization: codacy
    }
  ]
)
