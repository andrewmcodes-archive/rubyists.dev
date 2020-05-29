# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'activeresource'
gem 'bootsnap', require: false
gem 'dotenv-rails'
gem 'jbuilder', '~> 2.7'
gem 'pg'
gem 'puma'
gem 'rails'
gem 'rails-observers'
gem 'redis'
gem 'redis-namespace'
gem 'redis-rails'
gem 'sass-rails', '>= 6'
gem 'sentry-raven'
gem 'sidekiq'
gem 'skylight'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'

group :development, :test do
  gem 'brakeman'
  gem 'bundler-audit'
  gem 'fasterer'
  gem 'ffaker'
  gem 'lol_dba'
  gem 'pry-rails'
  gem 'rails_best_practices'
end

group :development do
  gem 'better_errors' 
  gem 'binding_of_caller'
  gem 'letter_opener'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
