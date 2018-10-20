class AddDeletedAtToPlacePicture < ActiveRecord::Migration
  def change
    add_column :place_pictures, :deleted_at, :datetime
  end
end
