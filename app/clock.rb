#!/usr/bin/env ruby

require 'sinatra'
require 'json'

disable :logging
use Rack::Logger

set :bind, "0.0.0.0"
set :port, ENV["PORT"] || 8080

get "/v2/clock/now" do
  { current_time: Time.now.to_s }.to_json + "\n"
end

get "/heartbeat" do
  "OK\n"
end
