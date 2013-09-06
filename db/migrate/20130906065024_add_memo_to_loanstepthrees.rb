class AddMemoToLoanstepthrees < ActiveRecord::Migration
  def change
    add_column :loanstepthrees, :memo, :string
  end
end
