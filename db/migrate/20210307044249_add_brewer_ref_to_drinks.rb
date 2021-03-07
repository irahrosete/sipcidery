class AddBrewerRefToDrinks < ActiveRecord::Migration[6.1]
  def change
    add_reference :drinks, :brewer, null: false, foreign_key: true
  end
end
