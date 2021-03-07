class CreateBrewers < ActiveRecord::Migration[6.1]
  def change
    create_table :brewers do |t|
      t.string :name
      t.text :description
      t.string :email

      t.timestamps
    end
  end
end
