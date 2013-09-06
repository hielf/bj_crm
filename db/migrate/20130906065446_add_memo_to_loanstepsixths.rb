class AddMemoToLoanstepsixths < ActiveRecord::Migration
  def change
    add_column :loanstepsixths, :memo, :string
  end
end
