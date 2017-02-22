class Customer
  attr_accessor :name, :hometown
  @@all = []
  extend Collectable
  
  def initialize(attributes)
    @name = attributes.fetch(:name)
    @hometown = attributes.fetch(:hometown) { 'unknown' }
    @@all << self
  end

  def self.all
    @@all
  end

  def orders
    Order.all.select do |order|
      order.customer == self
    end
  end

  def drinks
    drinks = self.orders.map(&:drink).flatten.uniq { |drink| drink.name } 
  end

  def bartenders
    self.orders.map(&:bartender).flatten.uniq
  end
end