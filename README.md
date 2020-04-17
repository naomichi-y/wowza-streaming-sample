# wawza-streaming-sample

This is running sample of Wowsa Streaming cloud SDK.

https://github.com/WowzaMediaSystems/wsc-sdk-ruby

## Setup

```
$ bundle install --path vendor/bundle
```

# Run sample code

```
# Create live stream
$ bundle exec ruby samples/create_livestream.rb

# Start live stream
$ bundle exec ruby samples/start_livestream.rb {live_stream_id}

# Stop live stream
$ bundle exec ruby samples/stop_livestream.rb {live_stream_id}
```
