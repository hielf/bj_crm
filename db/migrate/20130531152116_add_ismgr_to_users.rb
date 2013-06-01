class AddIsmgrToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ismgr, :boolean
  end
end
