class CreateProps < ActiveRecord::Migration
  def change
    create_table :props do |t|
      t.string :title
      t.string :price
      t.integer :sqft
      t.text :description
      t.string :mls
      t.string :address
      t.integer :beds
      t.float :baths

      t.timestamps null: false
    end
  end
end
