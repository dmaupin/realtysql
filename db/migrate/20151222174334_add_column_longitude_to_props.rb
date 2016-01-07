class AddColumnLongitudeToProps < ActiveRecord::Migration
  def change
  	add_column :props, :longitude, :float
  end
end
