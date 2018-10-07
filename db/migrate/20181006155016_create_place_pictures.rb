class CreatePlacePictures < ActiveRecord::Migration
  def change
    create_table :place_pictures do |t|
      t.string :picture
      t.integer :place_id
    end
  end
end
