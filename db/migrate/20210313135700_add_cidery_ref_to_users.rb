class AddCideryRefToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :cidery, foreign_key: true, default: 1
  end
end