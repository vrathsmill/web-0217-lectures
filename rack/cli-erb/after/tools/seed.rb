bart_simpson = Customer.new({name: 'bart simpson', hometown: 'springfield'})
lisa = Customer.new({name: 'lisa simpson', hometown: 'springfield'})
maggie = Customer.new({name: 'maggie simpson', hometown: 'springfield'})

moe =  Bartender.new({name: 'moe', hometown: 'springfield'}) 
selma =  Bartender.new({name: 'selma', hometown: 'springfield'})

rootbeer = Drink.new({name: 'rootbeer', price: 3}) 
milkshake = Drink.new({name: 'milkshake', price: 4})
juice = Drink.new({name: 'juice', price: 2})
duff =  Drink.new({name: 'duff', price: 5})

order = Order.new({customer: bart_simpson, bartender: moe, drink: rootbeer})
order = Order.new({customer: bart_simpson, bartender: selma, drink: milkshake})
order = Order.new({customer: bart_simpson, bartender: moe, drink: milkshake})
order = Order.new({customer: maggie, bartender: selma, drink: rootbeer})
order = Order.new({customer: lisa, bartender: moe, drink: milkshake})
order = Order.new({customer: lisa, bartender: selma, drink: milkshake})
