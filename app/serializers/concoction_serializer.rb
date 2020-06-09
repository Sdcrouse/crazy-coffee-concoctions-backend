class ConcoctionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :instructions, :notes
  has_many :coffees
  has_many :ingredients
end
