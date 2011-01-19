require 'rubygems'
require 'sinatra'

get '/' do
#  request.env['REMOTE_ADDR'].split(",").first
  request.env.to_yaml
end

