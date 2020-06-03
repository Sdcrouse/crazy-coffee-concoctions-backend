class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :amount
      t.string :name
      t.references :concoction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
