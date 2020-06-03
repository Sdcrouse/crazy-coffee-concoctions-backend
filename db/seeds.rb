# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Concoctions:
mocha = Concoction.create(name: "Regular Mocha", instructions: "Mix well. Serve warm. Enjoy!", notes: "You can substitute water for milk, if you want it to be less sweet.")

crazy_instant = Concoction.create(
  name: "My Super Crazy Instant Coffee Concoction", 
  instructions: "Mix together all ingredients except the creamer. Then, mix in the creamer; this makes it easier to blend everything together without risking overflowing the coffee mug. Enjoy!",
  notes: "I've made something like this before, and it's REALLY good! You could also replace the water with milk, if you want a sweeter taste."
)

brewed = Concoction.create(
  name: "Delicious Brewed Coffee",
  instructions: "Add coffee to filter. Add boiling water. Steep coffee for 20-30 minutes, depending on desired strength. Remove filter and dump out coffee grounds. Add remaining ingredients. Serve hot.",
  notes: "This is one of my personal favorite concoctions. And I suppose you could save the coffee grounds instead of dumping them out, but I don't know how reusable they are."
)

craziest = Concoction.create(
  name: "The Craziest Coffee Concoction of Them All",
  instructions: "Mix all ingredients together, except for the whipped cream and sprinkles. Top with whipped cream and sprinkles. Serve at your own risk.",
  notes: "I don't think I'm brave enough to try this! And if anyone serves this to me as a prank, I will be sure to retaliate in full."
)

# Ingredients:
mocha.ingredients.create([
  {amount: "8 fl oz", name: "hot water"},
  {amount: "1 tsp", name: "sugar"},
  {amount: "1 tsp", name: "vanilla creamer"},
  {amount: "1 tsp", name: "chocolate syrup"}
])

crazy_instant.ingredients.create([
  {amount: "8 fl oz", name: "hot water"},
  {amount: "1 packet", name: "Sweet and Low sugar"},
  {amount: "1 tsp", name: "International Delight Creamer (hazelnut flavor)"},
  {amount: "1/2 tsp", name: "vanilla extract"},
  {amount: "a pinch", name: "cinnamon"}
])

brewed.ingredients.create([
  {amount: "8 fl oz", name: "boiling water"},
  {amount: "1 packet", name: "Sweet and Low sugar"},
  {amount: "1-2 tsp", name: "vanilla-flavored creamer"}
])

craziest.ingredients.create([
  {amount: "1 packet", name: "Sweet and Low sugar"},
  {amount: "1 tsp", name: "Tabasco Sauce"},
  {amount: "1 tsp", name: "Strawberry Cheesecake creamer"},
  {amount: "1/4 tsp", name: "garlic salt"},
  {amount: "1 dollop", name: "whipped cream"},
  {amount: "1 pinch", name: "rainbow sprinkles"}
])