require 'wsc_sdk'
require 'net/http'
require 'digest/sha2'

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
  puts 'Specify recording id.'
  exit
end

recording = WscSdk.client.request_endpoint(:get, "recordings/#{id}").deep_symbolize_keys

if recording[:meta].present?
  puts recording[:meta][:message]
  exit
end

uri = URI.parse(recording[:recording][:download_url])
puts "Downloading... #{uri}"
write_path = "samples/downloads/#{Digest::SHA256.hexdigest(uri.path)}.mp4"

IO.write(write_path, Net::HTTP.get(uri))
puts "Write: #{write_path}"
