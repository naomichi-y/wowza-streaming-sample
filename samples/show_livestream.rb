require 'wsc_sdk'

logger = ::Logger.new(STDOUT)
logger.level = Logger::WARN

WscSdk.configure do |config|
  config.api_key    = ENV.fetch('WSC_API_KEY')
  config.access_key = ENV.fetch('WSC_API_ACCESS_KEY')
  config.logger     = logger
  # config.hostname   = WscSdk::SANDBOX_HOSTNAME
end

id = ARGV[0]

if id.nil?
  puts 'Specify live stream id.'
  exit
end

live_stream = WscSdk.client.live_streams.find(id)

unless live_stream.success?
  puts 'There was an error finding the live stream'
  exit
end

puts JSON.pretty_generate(live_stream.attributes)
