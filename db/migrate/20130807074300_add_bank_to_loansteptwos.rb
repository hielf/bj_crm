class AddBankToLoansteptwos < ActiveRecord::Migration
  def change
    add_column :loansteptwos, :bank, :integer
  end
end
