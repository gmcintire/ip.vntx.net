require 'rubygems'
require 'sinatra'

get '/' do
  request.env['HTTP_X_REAL_IP'].split(",").first
#  request.env.to_yaml
end

get '/ip.json' do
  content_type 'application/json', :charset => 'utf-8'

#  unless

#  result = { :ip => request.env['REMOTE_ADDR'], :user_agent => request.env['HTTP_USER_AGENT'], :http_accept => request.env['HTTP_ACCEPT'] }
  result = { :ip => request.env['HTTP_X_REAL_IP'], :user_agent => request.env['HTTP_USER_AGENT'], :http_accept => request.env['HTTP_ACCEPT'] }

  result.to_json
end
