# controllers/authors_controller.rb
class AuthorsController
  def index
    @authors = Author.all
    output = render 'authors/index'
    Rack::Response.new(output)
  end

  def show(request)
    id = request.params["id"] # 1
    @author = Author.find(id.to_i)
    output = render 'authors/show'
    
    Rack::Response.new(output)
  end

  def render(path)
    file = File.read("app/views/#{path}.html.erb")
    template = ERB.new(file)

    template.result(binding)
  end

end