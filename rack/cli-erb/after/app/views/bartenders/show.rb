class BartenderShowView
  attr_accessor :bartender
  
  def initialize(bartender)
    @bartender = bartender
  end

  def render
    puts "#{bartender.name} hailing from #{bartender.hometown}"
  end
end