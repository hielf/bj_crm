class DefUsertypeToUsers < ActiveRecord::Migration
  def up
    add_column :users, :usertype, :integer
  end

  def down
  end
end
