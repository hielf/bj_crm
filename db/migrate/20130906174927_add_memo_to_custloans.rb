class AddMemoToCustloans < ActiveRecord::Migration
  def change
    add_column :custloans, :memo, :string
  end
end
