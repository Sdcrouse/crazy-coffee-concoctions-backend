class Concoction < ApplicationRecord
  has_many :coffees
  has_many :ingredients
end
