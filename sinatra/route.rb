require 'sinatra'
require 'thin'
require 'json'

configure do
  set :server, ['thin']
  set :port, 4567
end

get '/' do
  {msg: 'Hello World'}.to_json
end
