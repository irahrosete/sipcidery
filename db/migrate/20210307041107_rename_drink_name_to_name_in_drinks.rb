class RenameDrinkNameToNameInDrinks < ActiveRecord::Migration[6.1]
  def up
    rename_column :drinks, :drink_name, :name
  end

  def down
    rename_column :drinks, :name, :drink_name
  end
end
