require 'pry-byebug'
require 'rack'
require_relative 'bananas_controller.rb'
class App
  def call(env)

    request = Rack::Request.new(env) 
    if request.path == '/bananas'
      controller = BananasController.new
      controller.index
    else
      ["200", {"Content-Type" => "text/plain"},["are you sure you dont want a banana"]]
    end
  end
end

Rack::Handler::WEBrick.run App.new

