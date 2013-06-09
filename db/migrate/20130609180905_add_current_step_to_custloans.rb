class AddCurrentStepToCustloans < ActiveRecord::Migration
  def change
    add_column :custloans, :current_step, :integer
  end
end
