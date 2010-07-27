class AddSubuserIdToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :subuser_id, :integer
  end

  def self.down
    remove_column :users, :subuser_id
  end
end
