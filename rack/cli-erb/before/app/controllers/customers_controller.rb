class CustomersController

  def show_me_the_form
    view = CustomerNewView.new
    view.render
  end

  def create(customer_name)
    @customer = Customer.new({name: customer_name})
    render 'customers/show'
  end

  def show(customer_name)
    @customer = Customer.find_by_name(customer_name)
    view = CustomerShowView.new(@customer)
    render 'customers/show'
  end

  def index
    @customers = Customer.all
    render 'customers/index'
  end

  def render(file)
    output_file = "app/views/templates/customers/show.html.erb"
    `open -a "google chrome" #{output_file}`
  end
end