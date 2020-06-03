class CreateCoffees < ActiveRecord::Migration[6.0]
  def change
    create_table :coffees do |t|
      t.string :amount
      t.string :brand
      t.string :variety
      t.references :concoction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
