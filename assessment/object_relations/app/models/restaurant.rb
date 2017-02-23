class Restaurant
  attr_accessor :name
  @@restaurants = []


  def initialize(name)
    @name = name
    @@restaurants << self
    @reviews = []
  end

  def self.all
    @@restaurants
  end

  def find_by_name(name)
    self.all.find do {|name| name == name}
    end
  end

  def reviews
    @reviews
  end

  def customers
    self.reviews.collect do |review|
      review.customer
    end
  end



end

# Restaurant.all
# Restaurant.find_by_name(name)
# Restaurant#reviews
# Restaurant#customers
  # should return all of the customers who have written reviews.
