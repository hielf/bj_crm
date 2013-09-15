class AddServUserIdToCustloans < ActiveRecord::Migration
  def change
    add_column :custloans, :serv_user_id, :integer
  end
end
