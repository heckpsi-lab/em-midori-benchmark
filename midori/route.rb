require 'em-midori'
require 'json'

class API < Midori::API
  get '/' do
    {msg: 'Hello World'}.to_json
  end
end

Midori.run(API, '127.0.0.1', 4564)
