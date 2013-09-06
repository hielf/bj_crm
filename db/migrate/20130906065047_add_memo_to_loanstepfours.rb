class AddMemoToLoanstepfours < ActiveRecord::Migration
  def change
    add_column :loanstepfours, :memo, :string
  end
end
