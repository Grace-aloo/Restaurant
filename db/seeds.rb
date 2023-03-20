puts "WE ROLLING"

20.times do
    Pizza.create(
      name: Faker::Food.dish,
      ingredients: Faker::Food.ingredient
    )
  end
  
  # Create 5 restaurants
5.times do
    restaurant = Restaurant.create(
      name: Faker::Restaurant.name,
      address: Faker::Address.full_address
    )
 # Add random pizzas to the restaurant with random prices between 1 and 30
 pizzas.all.sample(5).each do |pizza|
    restaurant_pizza = RestaurantPizza.new(
      price: rand(1..30),
      restaurant_id: restaurant.id,
      pizza_id: pizza.id
    )
    restaurant_pizza.save    
  
puts "OVER AND OUT"