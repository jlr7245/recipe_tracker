class Recipe < ApplicationRecord
  enum course: [:breakfast, :lunch, :dinner, :dessert]

  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients
end
