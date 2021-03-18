class AddAttributesToDrinks < ActiveRecord::Migration[6.1]
  def change
    add_column :drinks, :abv, :float
    add_column :drinks, :size, :integer
  end
end
