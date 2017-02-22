class BartenderIndexView
  attr_accessor :bartenders
  
  def initialize(bartenders)
    @bartenders = bartenders
  end

  def render
    puts 'here are all of the bartenders'
    bartenders.each do |bartender|  
      puts "#{bartender.name} hailing from #{bartender.hometown}"
    end
  end
end
            