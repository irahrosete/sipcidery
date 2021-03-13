class RenameBrewersToCideries < ActiveRecord::Migration[6.1]
  def change
    rename_table :brewers, :cideries
    rename_column :drinks, :brewer_id, :cidery_id
  end
end
