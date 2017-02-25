class Review
  include Databaseable::InstanceMethods
  extend Databaseable::ClassMethods

  ATTRIBUTES = {
    id: "INTEGER PRIMARY KEY",
    customer_id: "INTEGER",
    restaurant_id: "INTEGER"
  }

  attr_accessor(*self.public_attributes)
  attr_reader :id



  def customer
    sql = <<-SQL
      SELECT * FROM customers
      INNER JOIN reviews ON reviews.customer_id = customer.id
    SQL
    self.class.db.execute(sql, self.id)
    end
  end

  def restaurant
    sql = <<-SQL
      SELECT * FROM restaurants
      INNER JOIN reviews ON reviews.restaurant_id = restaurants.id
      WHERE reviews.restaurant_id  = ?
    SQL
    self.class.db.execute(sql, self.id)
    end
# Add something similar to this to the rest of your queries.
  end

end
