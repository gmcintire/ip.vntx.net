require 'rubygems'
require 'sinatra'

get '/' do
  "Your IP address is #{ @env['REMOTE_ADDR'] }"
end

