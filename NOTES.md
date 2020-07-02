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
* Add validations, authentication and authorization with a User model, and error/success messages (Update: Partial-check. I added a few front-end validations by making some input fields "required".)
* Let users add their own reviews and ratings ("I do/don't want to try this", "I'm not sure about this", "I've tried it and loved/hated it", etc)
* Allow users to edit and delete their coffee concoctions
* For added humor, re-write part of the app with CoffeeScript
* Use the Mocha framework to add frontend tests to my app
* Create a many-to-many relationship between Concoctions and Ingredients
  * This may or may not somehow include Coffees - maybe a polymorphic association, i.e. the join model could belong to an Ingredient OR Coffee?
  * The join model would have a concoction_id, ingredient_id, amount, brand, etc
  * An Ingredient would have a name and category

### Easter Egg stretch goal
Make use of the HTTP status 418 "I'm a teapot". You can't brew coffee with a teapot.
I could do this when a user specifies "teapot" as an Ingredient and/or puts "Brew coffee with a teapot" in the instructions. (Update: Partial-check. I implemented this for the instructions, but not the Ingredient model.)
See https://httpstatuses.com/418 and https://tools.ietf.org/html/rfc2324#section-2.3.2 and https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/418
(There also seems to be a "coffee" URI scheme.)

## Validation stretch goals
* A Concoction needs a name, instructions, and at least one coffee; notes and Ingredients are optional
* A Coffee (unless left blank) needs an amount, variety, and concoction_id (edge case); brand is optional
* An Ingredient (unless left blank) needs an amount, name, category, and concoction_id (the latter two are edge cases, unless the user knows how to hack the DOM)
* A basic cup of coffee includes ground coffee and a liquid, so a Concoction should have an Ingredient whose category is "liquid"
* Update: As noted above, I implemented a couple of these stretch goals on the frontend.

## For future reference
* Be sure to run migrations in separate branches BEFORE merging them into master. A master branch with migration files that may or may not work, is a BAD idea!
* To make the app run as fast as possible, it is SUPER important to index your foreign keys/associations!