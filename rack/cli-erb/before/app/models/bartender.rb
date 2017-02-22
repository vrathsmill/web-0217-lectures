class Bartender
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
      order.bartender == self
    end
  end

  def drinks
    self.orders.map do |order|
      order.drink
    end
  end
end