require_relative '../config/environment.rb'
require_relative '../tools/seed.rb'

action = 'something'
resource = 'something'
until resource == 'exit' || action == 'exit'
  puts 'what would you like to act on? (customer, bartender, drink, order)'
  resource = gets.chomp.downcase
    case resource
      when 'order'
        puts 'what action would you like to take: add, show, destroy, index'
        action = gets.chomp
        case action
          whens 'add'
            orders_controller = OrdersController.new
            information = orders_controller.show_me_the_form

            orders_controller.create(information)
          when 'index'
            puts 'here are all of the orders'
            Order.all.each do |order|
              puts "#{order.customer.name} ordered #{order.drink.name} from #{order.bartender.name}"
            end
          when 'show'
            puts 'which order would you like to see'
            order_number = gets.chomp
            order = Order.find_by_number(order_number)
            puts "#{order.customer.name} ordered #{order.drink.name} from #{order.bartender.name}"
          when 'destroy'
            puts 'which order would you like to destroy'
            order_number = gets.chomp
        end
      when 'customer'
        puts 'what action would you like to take: add, show, destroy, index'
        action = gets.chomp
        case action
          when 'add'
            customer_name = CustomersController.new.show_me_the_form
            customer = CustomersController.new.create(customer_name)
          when 'index'
            CustomersController.new.index
          when 'show'
            puts 'which customer would you like to see'
            customer_name = gets.chomp
            customer = CustomersController.new.show(customer_name)
        end 
    when 'drink'
      puts 'what action would you like to take: add, show, destroy, index'
      action = gets.chomp
      case action
        when 'add'
          drink_name = DrinksController.new.show_me_the_form
          drink = DrinksController.new.create(drink_name)
        when 'index'
          DrinksController.new.index
        when 'show'
          puts 'which drink would you like to see'
          drink = gets.chomp
          drink = DrinksController.new.show(customer_name)
      end
    when 'bartender'
      puts 'what action would you like to take: add, show, destroy, index'
      action = gets.chomp
      case action
        when 'add'
          bartender_name = BartendersController.new.show_me_the_form
          bartender = BartendersController.new.create(bartender_name)
        when 'index'
          BartendersController.new.index
        when 'show'
          puts 'which bartender would you like to see'
          Bartender = gets.chomp
          Bartender = BartendersController.new.show(bartender_name)
      end
    end

end