class AddLatitudeToProps < ActiveRecord::Migration
  def change
    add_column :props, :latitude, :float
  end
end
