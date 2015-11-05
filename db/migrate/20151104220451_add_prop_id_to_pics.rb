class AddPropIdToPics < ActiveRecord::Migration
  def change
  	add_column :pics, :prop_id, :string
  end
end
