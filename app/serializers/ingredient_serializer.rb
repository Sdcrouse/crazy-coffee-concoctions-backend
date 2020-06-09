class IngredientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :amount, :name, :category
end
