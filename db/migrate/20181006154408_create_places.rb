class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :place_name
      t.string :review_content
      t.integer :address_id
      t.integer :user_id
      
      t.timestamps
    end
  end
end
