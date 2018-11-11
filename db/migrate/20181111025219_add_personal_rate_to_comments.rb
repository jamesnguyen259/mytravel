class AddPersonalRateToComments < ActiveRecord::Migration
  def change
    add_column :comments, :personal_rate, :float, {default: 0, limit: 5}
  end
end
