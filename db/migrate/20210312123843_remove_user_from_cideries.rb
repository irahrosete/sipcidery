class RemoveUserFromCideries < ActiveRecord::Migration[6.1]
  def change
    remove_reference :cideries, :user, null: false, foreign_key: true
  end
end
