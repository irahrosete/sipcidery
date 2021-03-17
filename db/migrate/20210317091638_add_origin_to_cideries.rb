class AddOriginToCideries < ActiveRecord::Migration[6.1]
  def change
    add_column :cideries, :origin, :string
  end
end
