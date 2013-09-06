class AddMemoToLoanstepsevens < ActiveRecord::Migration
  def change
    add_column :loanstepsevens, :memo, :string
  end
end
