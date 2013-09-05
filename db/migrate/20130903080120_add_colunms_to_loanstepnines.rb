class AddColunmsToLoanstepnines < ActiveRecord::Migration
  def change
    add_column :loanstepnines, :loan_amount, :float
    add_column :loanstepnines, :attachment_file1, :string
  end
end
