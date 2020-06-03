# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Concoction.create(name: "Regular Mocha", instructions: "Mix well. Serve warm. Enjoy!", notes: "You can substitute water for milk, if you want it to be less sweet.")
Concoction.create(
  name: "My Super Crazy Instant Coffee Concoction", 
  instructions: "Mix together all ingredients except the creamer. Then, mix in the creamer; this makes it easier to blend everything together without risking overflowing the coffee mug. Enjoy!",
  notes: "I've made something like this before, and it's REALLY good! You could also replace the water with milk, if you want a sweeter taste."
)
Concoction.create(
  name: "Delicious Brewed Coffee",
  instructions: "Add coffee to filter. Add boiling water. Steep coffee for 20-30 minutes, depending on desired strength. Remove filter and dump out coffee grounds. Add remaining ingredients. Serve hot.",
  notes: "This is one of my personal favorite concoctions. And I suppose you could save the coffee grounds instead of dumping them out, but I don't know how reusable they are."
)
Concoction.create(
  name: "The Craziest Coffee Concoction of Them All",
  instructions: "Mix all ingredients together. Serve at your own risk.",
  notes: "I don't think I'm brave enough to try this!"
)