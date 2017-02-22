require 'rack'
class BananasController
  def index
    ["200", {"Content-Type" => "text/plain"},["take a banana"]]
  end
end