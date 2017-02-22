class Drink
  attr_accessor :name, :price
  @@all = []
  extend Collectable
  def initialize(attributes)
    @name = attributes.fetch(:name)
    @price = attributes.fetch(:price) { 'unknown' }
    @@all << self
  end

  def self.all
    @@all
  end

  def orders
  end

  def customers
  end

  def bartenders
  end

end