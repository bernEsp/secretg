class AddMainuserIdToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :mainuser_id, :integer
  end

  def self.down
    remove_column :users, :mainuser_id
  end
end
