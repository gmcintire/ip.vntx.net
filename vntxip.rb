require 'rubygems'
require 'sinatra'

get '/' do
  request.env['HTTP_X_REAL_IP'].split(",").first
#  request.env.to_yaml
end

