class AddCustloanIdToLoanpaymentplans < ActiveRecord::Migration
  def change
    add_column :loanpaymentplans, :custloan_id, :integer
  end
end
