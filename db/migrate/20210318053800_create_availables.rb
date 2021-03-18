class CreateAvailables < ActiveRecord::Migration[6.1]
  def change
    create_table :availables do |t|
      t.references :drink, foreign_key: true
      t.references :retailer, foreign_key: true

      t.timestamps
    end
  end
end
