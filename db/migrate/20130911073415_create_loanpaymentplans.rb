class CreateLoanpaymentplans < ActiveRecord::Migration
  def change
    create_table :loanpaymentplans do |t|
      t.string :contract_num
      t.string :loan_num
      t.integer :cur
      t.float :loan_amount
      t.integer :loan_deadline
      t.datetime :loan_begindate
      t.datetime :loan_enddate
      t.integer :payment_type

      t.timestamps
    end
  end
end
