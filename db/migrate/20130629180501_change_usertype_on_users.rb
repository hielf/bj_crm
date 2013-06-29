class ChangeUsertypeOnUsers < ActiveRecord::Migration
  def up
    remove_column(:users, :usertype)
  end

  def down
  end
end
