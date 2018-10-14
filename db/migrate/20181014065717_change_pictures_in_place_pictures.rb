class ChangePicturesInPlacePictures < ActiveRecord::Migration
  def self.up
    remove_column :place_pictures, :picture
    change_table :place_pictures do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :place_pictures, :picture
    add_column :place_pictures, :picture, :string
  end
end
