require 'em-midori'
require 'json'

class API < Midori::API
  get '/' do
    {msg: 'Hello World'}.to_json
  end
end

Midori::Configure.set :bind, '127.0.0.1'
Midori::Configure.set :port, 4564
Midori::Runner.new(API).start
