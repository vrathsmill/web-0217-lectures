class CustomerNewView
  def render
    puts 'What customer would you like to add'
    customer_name = gets.chomp
  end
end