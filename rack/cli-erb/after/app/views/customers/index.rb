class CustomerIndexView
  attr_accessor :customers
  
  def initialize(customers)
    @customers = customers
  end

  def render
    puts 'here are all of the customers'
    customers.each do |customer|  
      puts "#{customer.name} hailing from #{customer.hometown}"
    end
  end
end
            