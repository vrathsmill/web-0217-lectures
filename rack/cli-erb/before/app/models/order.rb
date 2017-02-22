class Order
  
  @@all = []

  def initialize(attributes)  
    @drink = attributes.fetch(:drink)
    @bartender = attributes.fetch(:bartender)
    @customer = attributes.fetch(:customer)
    @@all << self
  end

  def self.all
    @@all
  end

  def find_by_number(number)
    num = Integer(number)
    all.find do |order|
      order.number == num
    end
  end
end