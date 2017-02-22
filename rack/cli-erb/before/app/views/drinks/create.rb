class DrinkCreateView
  attr_accessor :drink
  
  def initialize(drink)
    @drink = drink
  end

  def render
    puts "great you have added #{drink.name}"
  end
end