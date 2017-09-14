class Recipe < ApplicationRecord
  enum course: [:breakfast, :lunch, :dinner, :dessert]

  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients

  scope :recently_added, -> { where(created_at: (1.day.ago..Time.now))}
end
