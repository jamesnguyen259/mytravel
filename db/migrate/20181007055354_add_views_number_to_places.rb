class AddViewsNumberToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :views_number, :integer, default: 0
  end
end
