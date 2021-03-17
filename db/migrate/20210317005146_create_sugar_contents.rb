class CreateSugarContents < ActiveRecord::Migration[6.1]
  def change
    create_table :sugar_contents do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
