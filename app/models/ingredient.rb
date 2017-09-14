class Ingredient < ApplicationRecord
  enum :category [:spice, :oil, :baking, :vegetable, :dairy, :meat, :other]

  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
end
