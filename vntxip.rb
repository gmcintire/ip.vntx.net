require 'rubygems'
require 'sinatra'

get '/' do
  raw = @request.env["REMOTE_ADDR"]
  raw.match(/^(\d+\.\d+\.\d+\.\d+),?/)
  @ip = $1
  haml '=@ip'
end

