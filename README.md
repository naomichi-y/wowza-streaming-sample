# wowza-streaming-sample

This is running sample of [Wowsa Streaming cloud SDK](https://github.com/WowzaMediaSystems/wsc-sdk-ruby).

## Setup

```
$ bundle install --path vendor/bundle
$ export WSC_API_KEY=***
$ export WSC_API_ACCESS_KEY=***
```

## Run sample code

```
# Create live stream
$ bundle exec ruby samples/create_livestream.rb

# Start live stream
$ bundle exec ruby samples/start_livestream.rb {live_stream_id}

# Show live stream
$ bundle exec ruby samples/show_livestream.rb {live_stream_id}

# Stop live stream
$ bundle exec ruby samples/stop_livestream.rb {live_stream_id}

# Get recordings
$ bundle exec ruby samples/get_recordings.rb

# Get recording
$ bundle exec ruby samples/get_recording.rb {recording_id}
```
