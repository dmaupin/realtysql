class ChangePropIdToInteger < ActiveRecord::Migration
  def change
  	remove_column :pics, :prop_id
  	add_column :pics, :prop_id, :integer
  end
end
