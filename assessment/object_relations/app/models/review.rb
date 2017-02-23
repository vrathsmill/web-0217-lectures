class Review
  @@reviews = []

  attr_accessor :name, :restaurant, :customer

  def initialize(name, restaurant)
    @name = name
    @@reviews << self
    @restaurant = restaurant
  end


  def self.all
    @@reviews
  end

  def restaurant
    @restaurant
end

  def customer
    self.collect do |review|
      review.customer
    end
  end


end
# Review.all
# Review#customer
# Review#restaurant
