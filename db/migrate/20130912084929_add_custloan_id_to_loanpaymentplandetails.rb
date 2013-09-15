class AddCustloanIdToLoanpaymentplandetails < ActiveRecord::Migration
  def change
    add_column :loanpaymentplandetails, :custloan_id, :integer
  end
end
