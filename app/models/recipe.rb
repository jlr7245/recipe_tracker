class Recipe < ApplicationRecord
  enum course: [:breakfast, :lunch, :dinner, :dessert]
end
