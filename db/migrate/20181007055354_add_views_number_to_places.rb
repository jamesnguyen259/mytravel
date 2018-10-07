class AddViewsNumberToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :views_number, :integer
  end
end
