# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Courses

Recipe.destroy_all
Ingredient.destroy_all


# Recipes

potato_salad = Recipe.create!(name: 'Mashed Potato Salad With Scallions and Herbs', description: '(Never serve this cold; no one likes cold mashed potatoes.)', course: :lunch)
salmon = Recipe.create!(name: 'Salmon With Sesame and Herbs', description: 'The easy-to-memorize marinade for this fast broiled salmon hits all the right notes: salty, sweet and sour.', course: :dinner)
chicken_cucumbers = Recipe.create!(name: 'Grilled Chicken Breasts With Spicy Cucumbers', description: 'Light and refreshing, yet packed with flavor from herbs, jalapeños and garlic, this is an easy, after-work meal that can be endlessly adapted to suit what you’ve got on hand.', course: :dinner)
chicken_provencal = Recipe.create!(name: 'Roasted Chicken Provençal', description: 'It is a perfect dinner-party meal: chicken thighs or legs dusted in flour and roasted with shallots, lemons and garlic in a bath of vermouth and under a shower of herbes de Provence.', course: :dinner)
ice_cream_cake = Recipe.create!(name: 'Salty Peanut-Pretzel Ice Cream Cake', description: 'Grab a couple of quarts your favorite vanilla ice cream, crush up some peanuts and pretzels, and invite the neighborhood over for this sweet, salty, satisfying summer treat.', course: :dessert)

puts "#{Recipe.count} recipes created!"


# Ingredients

potatoes = Ingredient.create!(name: 'Potatoes', category: :vegetable)
rosemary = Ingredient.create!(name: 'Rosemary', category: :spice)
olive_oil = Ingredient.create!(name: 'Olive Oil', category: :oil)
mustard = Ingredient.create!(name: 'Mustard', category: :condiment)
soy_sauce = Ingredient.create!(name: 'Soy Sauce', category: :condiment)
salmon_ing = Ingredient.create!(name: 'Salmon Filets', category: :meat)
sesame_oil = Ingredient.create!(name: 'Sesame Oil', category: :oil)
chiken_ing = Ingredient.create!(name: 'Chicken', category: :meat)
cucumbers = Ingredient.create!(name: 'Cucumbers', category: :vegetable)
jalapenos = Ingredient.create!(name: 'Jalapeños', category: :vegetable)
garlic = Ingredient.create!(name: 'Garlic', category: :spice)
flour = Ingredient.create!(name: 'Flour', category: :baking)
shallots = Ingredient.create!(name: 'Shallots', category: :vegetable)
peanuts = Ingredient.create!(name: 'Peanuts', category: :legume)
ice_cream = Ingredient.create!(name: 'Ice Cream', category: :dairy)
pretzels = Ingredient.create!(name: 'Pretzels', category: :other)

puts "#{Ingredient.count} ingredients created!"


# RecipeIngredients

RecipeIngredient.create!([
  {recipe: potato_salad, ingredient: potatoes, amount: '5 billion'},
  {recipe: potato_salad, ingredient: rosemary, amount: '2 tbsp'},
  {recipe: potato_salad, ingredient: olive_oil, amount: '1 tbsp'},
  {recipe: potato_salad, ingredient: mustard, amount: 'however much you feel like'},
  {recipe: salmon, ingredient: soy_sauce, amount: '3 oz'},
  {recipe: salmon, ingredient: salmon_ing, amount: '15 fish'},
  {recipe: salmon, ingredient: sesame_oil, amount: '3 tbsp'},
  {recipe: chicken_cucumbers, ingredient: chiken_ing, amount: '35 dozen'},
  {recipe: chicken_cucumbers, ingredient: olive_oil, amount: '32 tbsp'},
  {recipe: chicken_cucumbers, ingredient: cucumbers, amount: '15'},
  {recipe: chicken_cucumbers, ingredient: jalapenos, amount: '2 tons'},
  {recipe: chicken_cucumbers, ingredient: garlic, amount: '30 oz'},
  {recipe: chicken_provencal, ingredient: chiken_ing, amount: '42'},
  {recipe: chicken_provencal, ingredient: garlic, amount: '90 cups'},
  {recipe: chicken_provencal, ingredient: shallots, amount: '2 lbs'},
  {recipe: chicken_provencal, ingredient: flour, amount: '10 cups'},
  {recipe: ice_cream_cake, ingredient: peanuts, amount: '2/3 tbsp'},
  {recipe: ice_cream_cake, ingredient: ice_cream, amount: '5 cartons'},
  {recipe: ice_cream_cake, ingredient: pretzels, amount: '2 bags'},
])

puts "#{RecipeIngredient.count} Recipe ingredients created"