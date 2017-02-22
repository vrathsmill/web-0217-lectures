class OrdersController

  def show_me_the_form
    view = OrdersNewView.new
    view.render
  end

  def create(information)
    customer = Customer.find_by_name(information.fetch(:customer_name))
    bartender = Bartender.find_by_name(information.fetch(:bartender_name))
    drink = Drink.find_by_name(information.fetch(:drink_name))
    order = Order.new(drink: drink, bartender: bartender, customer: customer)
    view = OrdersCreateView.new(order)
    view.render
  end
end