require 'pry'
require 'rack'

class App
  def call(env)
    # {request_path: '/customers', request_method: 'get'}
    if env["REQUEST_PATH"] == '/customers'

      ["200", {"Content-Type" => "text/html"},["#{Time.now}"]]
    else
      ["200", {"Content-Type" => "text/html"},["Try again"]]
    end
  end
end

get '/users' do
  erb :'/users'
end

get '/users' do
  erb :'/kittens'
end

Rack::Handler::WEBrick.run(App.new)


# sent a request
  # GET /customers

# module Rack
#   module Handler
#     class WEBrick
#       def self.run(application)
#         application.call(env)
#       end
#     end
#   end
# end

# Servers are rack compliant
# Take in an object - call the call method on it.
#
