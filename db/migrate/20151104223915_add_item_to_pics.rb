class AddItemToPics < ActiveRecord::Migration
  def change
  	add_column :pics, :item, :string
  end
end
