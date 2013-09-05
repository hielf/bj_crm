class CreateLoanstepnineadditionals < ActiveRecord::Migration
  def change
    create_table :loanstepnineadditionals do |t|
      t.integer :cust_id
      t.integer :custloan_id
      t.datetime :loan_date
      t.string :loan_amount_datetime
      t.string :attachment_file1

      t.timestamps
    end
  end
end
