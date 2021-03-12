class RenameBrewersToCideries < ActiveRecord::Migration[6.1]
  def up
    rename_table :brewers, :cideries
  end

  def down
    rename_table :cideries, :brewers
  end
end
