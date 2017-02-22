class BartendersController
  def show_me_the_form
    view = BartenderNewView.new
    view.render
  end

  def create(bartender_name)
    bartender = Bartender.new({name: bartender_name})
    view = BartenderCreateView.new(bartender)
    view.render
  end

  def show(bartender_name)
    bartender = Bartender.find_by_name(bartender_name)
    view = BartenderShowView.new(bartender)
    view.render
  end

  def index
    bartenders = Bartender.all
    view = BartenderIndexView.new(bartenders)
    view.render
  end
end