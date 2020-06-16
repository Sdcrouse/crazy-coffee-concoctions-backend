class Concoction < ApplicationRecord
  has_many :coffees
  has_many :ingredients

  accepts_nested_attributes_for :coffees, 
    reject_if: proc{ |attrs| attrs[:amount].blank? && attrs[:brand].blank? && attrs[:variety].blank? }

  accepts_nested_attributes_for :ingredients,
    reject_if: proc{ |attrs| attrs[:amount].blank? && attrs[:name].blank? }
end
