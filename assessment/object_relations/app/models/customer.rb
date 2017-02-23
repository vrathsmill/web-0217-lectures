class Customer
  attr_accessor :name

  @@customers = []

  def intialize(name)
    @name = name
    @reviews = []
    @@customers << self
  end

  def self.all
    @@customers
  end

  def find_by_name(name)
    self.all.find do {|name| name == name}
  end

  def add_review(review)
    @reviews << review
    review.customer = self
  end



end


# Build the following methods on the customer class
  # Customer.all
  # Customer.find_by_name(name)
  # Customer#add_review
  # Customer#add_restaurant


# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
