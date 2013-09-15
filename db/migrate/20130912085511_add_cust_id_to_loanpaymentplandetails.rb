class AddCustIdToLoanpaymentplandetails < ActiveRecord::Migration
  def change
    add_column :loanpaymentplandetails, :cust_id, :integer
  end
end
