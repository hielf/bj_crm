class AddContractTypeToLoanstepsixths < ActiveRecord::Migration
  def change
    add_column :loanstepsixths, :contract_type, :integer
  end
end
