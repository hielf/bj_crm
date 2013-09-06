class AddMemoToLoanstepfifths < ActiveRecord::Migration
  def change
    add_column :loanstepfifths, :memo, :string
  end
end
