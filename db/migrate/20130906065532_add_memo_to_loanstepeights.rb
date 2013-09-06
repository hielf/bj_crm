class AddMemoToLoanstepeights < ActiveRecord::Migration
  def change
    add_column :loanstepeights, :memo, :string
  end
end
