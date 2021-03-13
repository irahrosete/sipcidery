class RenameBrewersToCideries < ActiveRecord::Migration[6.1]
  # def up
  #   rename_table :brewers, :cideries
  # end

  # def down
  #   rename_table :cideries, :brewers
  # end
  def change
    rename_table :brewers, :cideries
    rename_column :drinks, :brewer_id, :cidery_id
  end
end
