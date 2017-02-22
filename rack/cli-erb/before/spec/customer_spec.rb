describe Customer do 
    let(:bart_simpson) { Customer.new(name: 'bart simpson', hometown: 'springfield')}
    let(:lisa) { Customer.new(name: 'lisa simpson', hometown: 'springfield')}
    let(:maggie) { Customer.new(name: 'maggie simpson', hometown: 'springfield')}

    let(:moe) { Bartender.new(name: 'moe', hometown: 'springfield') }
    let(:selma) { Bartender.new(name: 'selma', hometown: 'springfield')}

    let(:rootbeer) { Drink.new(name: 'rootbeer', price: 3) }
    let(:milkshake) { Drink.new(name: 'milkshake', price: 4)}
    let(:juice) { Drink.new(name: 'juice', price: 2)}
    let(:duff) { Drink.new(name: 'duff', price: 5)}

  before do 
    order = Order.new(customer: bart_simpson, bartender: moe, drink: rootbeer)
    order = Order.new(customer: bart_simpson, bartender: moe, drink: milkshake)
    order = Order.new(customer: bart_simpson, bartender: moe, drink: milkshake)
  end

  describe '#orders' do 
    it 'should return all orders ordered by the customer' do 
      expect(bart_simpson.orders.count).to eq 3
    end 
  end

  describe '#drinks' do
    it 'should return all drinks ordered by the customer' do 
      expect(bart_simpson.drinks.count).to eq 2
      expect(bart_simpson.drinks).to include(milkshake)
    end 
  end
end