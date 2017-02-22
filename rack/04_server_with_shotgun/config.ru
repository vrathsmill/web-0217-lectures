require 'pry-byebug'
require 'rack'

class App
  def call(env)
    request = Rack::Request.new(env) 
    if request.path == '/banana'
      Rack::Response.new("banana")
    else
      Rack::Response.new("do you maybe want a banana?")
    end
  end
end

use Rack::ContentType
run App.new