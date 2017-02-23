class User < ActiveRecord::Base

  def unlimited_use=(boolean)
    # binding.pry
    @unlimited_use = boolean
  end
  # attr_accessor(self.column_names)
  # def name=()
  # end
  #
  # def name
  # end
  # def name=(name)
  #   @name = name
  # end
  #
  # def foobar=(whatever)
  #   binding.pry
  # end

end

# User.new({name: 'ssj'})
