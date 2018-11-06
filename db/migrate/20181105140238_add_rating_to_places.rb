class AddRatingToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :rate, :float, {default: 0, limit: 5}
  end
end
