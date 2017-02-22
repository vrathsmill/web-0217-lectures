class BananasController
  def index
    @bananas = Banana.all
    output_content = render 'bananas/index'
    Rack::Response.new(output_content)
  end

  def show(request)
    
    @banana = Banana.find(request.params["id"].to_i)
    output_content = render 'bananas/show'
    Rack::Response.new(output_content)
  end

  def render(file)
    file_name = "app/views/#{file}.html.erb"
    content = File.read(file_name)
    # convert to template object

    template = ERB.new(content)
    # evaluate template with my current data thats in scope
    output_content = template.result(binding)
    # write this content to a file
    # view = CustomerShowView.new(customer)
    # view.render
  end
end