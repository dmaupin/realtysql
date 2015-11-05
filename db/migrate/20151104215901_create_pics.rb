class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :pic

      t.timestamps null: false
    end
  end
end
