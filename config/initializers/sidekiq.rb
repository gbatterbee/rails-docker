sidekiq_conf = { url: ENV[ENV['REDIS_PROVIDER']] }

Sidekiq.configure_server do |config|
  config.redis = sidekiq_conf
end
Sidekiq.configure_client do |config|
  config.redis = sidekiq_conf
end
