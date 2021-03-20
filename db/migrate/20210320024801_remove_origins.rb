class RemoveOrigins < ActiveRecord::Migration[6.1]
  def change
    drop_table :origins
  end
end
