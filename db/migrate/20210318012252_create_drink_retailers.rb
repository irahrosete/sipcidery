class CreateDrinkRetailers < ActiveRecord::Migration[6.1]
  def change
    create_table :drink_retailers do |t|
      t.references :drink, null: false, foreign_key: true
      t.references :retailer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
