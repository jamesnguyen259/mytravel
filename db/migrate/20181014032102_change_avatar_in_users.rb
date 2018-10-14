class ChangeAvatarInUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :avatar
    change_table :users do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :users, :avatar
    add_column :users, :avatar, :string
  end
end
