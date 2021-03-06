class CreateDrinks < ActiveRecord::Migration[6.1]
  def change
    create_table :drinks do |t|
      t.string :drink_name
      t.text :description
      t.integer :price
      t.boolean :available
      t.integer :quantity

      t.timestamps
    end
  end
end
