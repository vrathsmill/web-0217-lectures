class DrinksController
  def show_me_the_form
    view = DrinkNewView.new
    view.render
  end

  def create(drink_name)
    drink = Drink.new({name: drink_name})
    view = DrinkCreateView.new(drink)
    view.render
  end

  def show(drink_name)
    drink = Drink.find_by_name(drink_name)
    view = DrinkShowView.new(drink)
    view.render
  end

  def index
    drinks = Drink.all
    view = DrinkIndexView.new(drinks)
    view.render
  end
end