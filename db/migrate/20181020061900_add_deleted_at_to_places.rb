class AddDeletedAtToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :deleted_at, :datetime
    add_index :places, :deleted_at
  end
end
