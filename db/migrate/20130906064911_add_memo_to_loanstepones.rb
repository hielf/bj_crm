class AddMemoToLoanstepones < ActiveRecord::Migration
  def change
    add_column :loanstepones, :memo, :string
  end
end
