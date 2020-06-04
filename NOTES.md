# Notes, stretch goals, ideas, etc.

## Example JSON for a concoction
```
let concoction = {
  id: 2,
  name: "My Super Crazy Instant Coffee Concoction",
  coffees: [
    { id: 1, amount: "1 tsp", brand: "Folger's", name: "Instant Light Roast", concoction_id: 2 },
    { id: 2, amount: "1 tsp", brand: "Yuban", name: "Instant Medium Roast", concoction_id: 2 }
  ],
  ingredients: [
    { id: 1, category: "liquid", amount: "8 fl oz", name: "hot water", concoction_id: 2 },
    { id: 2, category: "sweetener", amount: "1 packet", name: "Sweet and Low", concoction_id: 2 },
    { id: 3, category: "creamer", amount: "1 tsp", name: "International Delight hazelnut creamer", concoction_id: 2 },
    { id: 4, category: "other", amount: "1/2 tsp", name: "vanilla extract", concoction_id: 2 },
    { id: 5, category: "other", amount: "a pinch", name: "cinnamon", concoction_id: 2 }
  ],
  instructions: "Mix together all ingredients except the creamer. Then, mix in the creamer; this makes it easier to blend everything together without risking overflowing the coffee mug. Enjoy!",
  notes: "I've made something like this before, and it's REALLY good! You could also replace the water with milk, if you want a sweeter taste."
}
```

## Stretch goals
* Add more attributes to the Coffee model such as blend, roast, and origin
  * If/when I do, I could also make use of the Faker::Coffee gem
* On the "New Concoction" form, add buttons that let users add/delete coffee blends and additional ingredients
* Add additional fields to the "New Concoction" form: image URL, preparation time, difficulty rating, etc
* Alert users with a warning message if they decide to go to another part of the app before saving their new coffee concoction
* Add validations, authentication and authorization with a User model, and error/success messages
* Let users add their own reviews and ratings ("I do/don't want to try this", "I'm not sure about this", "I've tried it and loved/hated it", etc)
* Allow users to edit and delete their coffee concoctions
* For added humor, re-write part of the app with CoffeeScript
* Create a many-to-many relationship between Concoctions and Ingredients
  * This may or may not somehow include Coffees - maybe a polymorphic association, i.e. the join model could belong to an Ingredient OR Coffee?
  * The join model would have a concoction_id, ingredient_id, amount, brand, etc
  * An Ingredient would have a name and category