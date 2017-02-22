require_relative 'config/environment'

class App
  def call(env)
    request = Rack::Request.new(env)

    if request.path == '/authors'
      controller = AuthorsController.new
      controller.index
    elsif request.params["id"]
      controller = AuthorsController.new
      controller.show(request)
    end
  end
end

use Rack::ContentType
run App.new


# Server - just a computer
  # HTTP Server - 
      # A port on the computer
      # 
  # Application 
    # Spit out some text