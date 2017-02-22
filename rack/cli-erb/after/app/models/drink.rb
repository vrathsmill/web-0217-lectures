class Drink
  attr_accessor :name, :price

  @@all = []
  extend Collectable
  def initialize(attributes)

    @name = attributes[:name]
    @price = attributes.fetch(:price) { 'unknown' }
    @@all << self
  end

  def self.all
    @@all
  end

  def orders
    # Find all the orders that involved this drink
      # Get all the orders
      Order.all.select do |order|
        order.drink == self
      end
  end
  
  def customers
    # milkshake.orders  
    self.orders.map do |order|
      order.customer
    end.uniq
    # [<customer>, <customer @name='lisa'>].uniq
    # [<order @drink=<milkshake>, @customer=<lisa >>, 
    # <order @drink=<milkshake>, @customer=<bart >>
    # <order @drink=<milkshake>, @customer=<bart >
    # ]

    # [<lisa>, <bart>]
  end

  def bartenders
    self.orders.map do |order|
      order.bartender
    end.uniq
  end
end