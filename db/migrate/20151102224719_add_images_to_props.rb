class AddImagesToProps < ActiveRecord::Migration
  def change
    add_column :props, :images, :json
  end
end
