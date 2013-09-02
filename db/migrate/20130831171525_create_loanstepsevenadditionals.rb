class CreateLoanstepsevenadditionals < ActiveRecord::Migration
  def change
    create_table :loanstepsevenadditionals do |t|
      t.integer :cust_id
      t.integer :custloan_id
      t.integer :bank_account_type
      t.string :account_name
      t.integer :bank
      t.string :account_code
      t.datetime :open_date
      t.string :attachment_file1
      t.string :attachment_file2
      t.string :attachment_file3
      t.string :attachment_file4
      t.string :attachment_file5
      t.string :attachment_file6
      t.string :attachment_file7
      t.string :attachment_file8
      t.string :attachment_file9
      t.string :attachment_file10
      t.string :attachment_file11

      t.timestamps
    end
  end
end
