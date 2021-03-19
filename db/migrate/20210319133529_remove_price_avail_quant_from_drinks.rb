class RemovePriceAvailQuantFromDrinks < ActiveRecord::Migration[6.1]
  def change
    remove_column :drinks, :price, :float
    remove_column :drinks, :available, :boolean
    remove_column :drinks, :quantity, :integer
  end
end
