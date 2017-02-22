require 'pry-byebug'
require 'rack'
require_relative 'config/environment.rb'

class App
  def call(env)
    request = Rack::Request.new(env)

    if request.path == '/bananas'
      controller = BananasController.new
      controller.index
    elsif request.params["id"]
      controller = BananasController.new
      controller.show(request)
    end
  end
end

use Rack::ContentType
run(App.new)
