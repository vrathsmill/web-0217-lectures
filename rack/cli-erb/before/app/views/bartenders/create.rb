class BartenderCreateView
  attr_accessor :bartender
  
  def initialize(bartender)
    @bartender = bartender
  end
  
  def render
    puts "great you have added #{bartender.name}"
  end
end