class Order
  attr_accessor :customer, :drink, :bartender
  attr_reader :number
  # attr_reader :customer
  # attr_writer :customer
  @@all = []
  @@number = 0

  
  def self.all
    @@all
  end

  def initialize(attributes)  
    
    attributes[:drink]
    @drink = attributes.fetch(:drink)
    @bartender = attributes.fetch(:bartender)
    @customer = attributes.fetch(:customer)
    @@number = @@number + 1 
    @number = @@number
    @@all << self
  end

  

  def find_by_number(number)
  end
end