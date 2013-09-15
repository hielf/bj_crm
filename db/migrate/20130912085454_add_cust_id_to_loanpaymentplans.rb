class AddCustIdToLoanpaymentplans < ActiveRecord::Migration
  def change
    add_column :loanpaymentplans, :cust_id, :integer
  end
end
