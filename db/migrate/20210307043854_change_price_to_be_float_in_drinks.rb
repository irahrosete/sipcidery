class ChangePriceToBeFloatInDrinks < ActiveRecord::Migration[6.1]
  def up
    change_column :drinks, :price, :float
  end

  def down
    change_column :drinks, :price, :integer
  end
end
