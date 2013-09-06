class AddMemoToLoansteptwos < ActiveRecord::Migration
  def change
    add_column :loansteptwos, :memo, :string
  end
end
