class AddImageToProps < ActiveRecord::Migration
  def change
    add_column :props, :image, :string
  end
end
