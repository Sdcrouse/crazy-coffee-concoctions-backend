class CoffeeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :amount, :brand, :variety
end
