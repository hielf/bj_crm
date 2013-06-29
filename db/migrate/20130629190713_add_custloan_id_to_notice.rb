class AddCustloanIdToNotice < ActiveRecord::Migration
  def change
    add_column :notices, :custloan_id, :integer
  end
end
