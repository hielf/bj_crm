class CreateLoanreportbanks < ActiveRecord::Migration
  def change
    create_table :loanreportbanks do |t|
      t.integer :loanreport_id
      t.integer :cust_id
      t.string :bank
      t.float :loan_amount
      t.integer :trust_type
      t.integer :guarantee_type

      t.timestamps
    end
  end
end
