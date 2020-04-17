require 'wsc_sdk'

logger = ::Logger.new(STDOUT)
logger.level = Logger::WARN

WscSdk.configure do |config|
  config.api_key    = ENV.fetch('WSC_API_KEY')
  config.access_key = ENV.fetch('WSC_API_ACCESS_KEY')
  config.logger     = logger
  # config.hostname   = WscSdk::SANDBOX_HOSTNAME
end

livestream_data = WscSdk::Templates::LiveStream.rtmp_push(
  'wowza-streaming-sample',
  1280,
  720,
  broadcast_location: 'asia_pacific_japan'
)
live_stream = WscSdk.client.live_streams.build(livestream_data)

unless live_stream.valid?
  puts 'Live Stream is invalid:'
  live_stream.errors.each do |field, message|
    puts " - #{field}: #{message}"
  end

  exit
end

saved = live_stream.save

unless saved.success?
  puts 'There was an error creating the live stream'
  exit
end

puts "live stream id: #{saved.id}"
