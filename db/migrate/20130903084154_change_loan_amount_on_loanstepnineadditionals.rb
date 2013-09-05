class ChangeLoanAmountOnLoanstepnineadditionals < ActiveRecord::Migration
  def up
    remove_column :loanstepnineadditionals, :loan_amount_datetime
    add_column :loanstepnineadditionals, :loan_amount, :float
  end

  def down
  end
end
