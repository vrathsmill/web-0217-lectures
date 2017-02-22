class DrinkIndexView
  attr_accessor :drinks
  
  def initialize(drinks)
    @drinks = drinks
  end

  def render
    puts 'here are all of the drinks'
    drinks.each do |drink|  
      puts "#{drink.name} hailing from #{drink.hometown}"
    end
  end
end
            