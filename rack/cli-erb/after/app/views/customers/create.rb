class CustomerCreateView
  attr_accessor :customer
  
  def initialize(customer)
    @customer = customer
  end

  def render
    puts "great you have added #{customer.name}"
  end
end