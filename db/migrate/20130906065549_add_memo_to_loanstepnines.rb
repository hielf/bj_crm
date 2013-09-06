class AddMemoToLoanstepnines < ActiveRecord::Migration
  def change
    add_column :loanstepnines, :memo, :string
  end
end
