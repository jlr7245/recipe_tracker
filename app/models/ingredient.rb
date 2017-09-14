class Ingredient < ApplicationRecord
  enum :category [:spice, :oil, :baking, :vegetable, :dairy, :meat, :other]
end
