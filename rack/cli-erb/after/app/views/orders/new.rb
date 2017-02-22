class OrdersNewView
  def render
    puts 'Who is placing the order? (Type in one of the names)'
    customer_name = gets.chomp
    puts 'From which bartender? (Type in one of the names)'
    bartender_name = gets.chomp
    puts 'What is the drink? (Type in name of drink from below)'
    drink_name = gets.chomp
    information = {customer_name: customer_name, bartender_name: bartender_name, drink_name: drink_name}
  end
end