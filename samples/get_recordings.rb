require 'wsc_sdk'

logger = ::Logger.new(STDOUT)
logger.level = Logger::WARN

WscSdk.configure do |config|
  config.api_key    = ENV.fetch('WSC_API_KEY')
  config.access_key = ENV.fetch('WSC_API_ACCESS_KEY')
  config.logger     = logger
  # config.hostname   = WscSdk::SANDBOX_HOSTNAME
end

recordings = WscSdk.client.request_endpoint(:get, 'recordings')
puts JSON.pretty_generate(recordings)
