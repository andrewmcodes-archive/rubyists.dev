# frozen_string_literal: true

# Sidekiq::Extensions.enable_delay!

Sidekiq.configure_server do |config|
  config.redis = {url: ENV["REDIS_URL"], size: ENV.fetch("REDIS_MAX_THREADS", 5).to_i}
end

Sidekiq.configure_client do |config|
  config.redis = {url: ENV["REDIS_URL"], size: ENV.fetch("REDIS_MAX_THREADS", 5).to_i}
end
