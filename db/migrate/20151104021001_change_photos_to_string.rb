class ChangePhotosToString < ActiveRecord::Migration
  def change
  	change_column :props, :photos, :string
  end
end
