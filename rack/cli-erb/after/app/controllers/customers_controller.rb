class CustomersController

  def show_me_the_form
    view = CustomerNewView.new
    view.render
  end

  def create(customer_name)
    customer = Customer.new({name: customer_name, hometown: hometown})
    view = CustomerCreateView.new(customer)
    view.render
  end

  def show(customer_name)
    @customer = Customer.find_by_name(customer_name)
    # read my file template
    render 'customers/show'
  end

  def index
    @customers = Customer.all
    render 'customers/index'
  end

  def render(file)
    file_name = "app/views/templates/#{file}.html.erb"
    content = File.read(file_name)
    # convert to template object
    template = ERB.new(content)
    # evaluate template with my current data thats in scope
    output_content = template.result(binding)
    # write this content to a file
    output_file = "app/views/output/#{file}.html"
    File.write(output_file, output_content)
    # open that output file
    `open -a "Google Chrome" #{output_file}`
    # view = CustomerShowView.new(customer)
    # view.render
  end

end
