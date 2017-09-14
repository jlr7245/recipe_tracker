class Ingredient < ApplicationRecord
  enum category: [:spice, :oil, :baking, :vegetable, :dairy, :meat, :condiment, :legume, :other]

  has_many :recipe_ingredients, dependent: :destroy
  has_many :recipes, through: :recipe_ingredients

  validates_presence_of :category, :name
end
