class AddIfCreditToLoanstepeights < ActiveRecord::Migration
  def change
    add_column :loanstepeights, :if_credit, :boolean
  end
end
