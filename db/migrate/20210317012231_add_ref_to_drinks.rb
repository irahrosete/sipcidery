class AddRefToDrinks < ActiveRecord::Migration[6.1]
  def change
    add_reference :drinks, :style, null: false, foreign_key: true
    add_reference :drinks, :sugar_content, null: false, foreign_key: true
    add_reference :drinks, :prod_method, null: false, foreign_key: true
  end
end
