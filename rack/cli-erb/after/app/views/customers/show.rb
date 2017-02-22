class CustomerShowView
  attr_accessor :customer
  
  def initialize(customer)
    @customer = customer
  end

  def render
    puts "#{customer.name} hailing from #{customer.hometown}"
  end
end