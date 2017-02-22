class OrdersCreateView
  attr_reader :order

  def initialize(order)
    @order = order
  end

  def render
    puts "great here is your order: #{order.drink.name} from #{order.bartender.name} for #{order.customer.name}!"
  end
end