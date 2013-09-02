class CreateLoanstepeightguarantors < ActiveRecord::Migration
  def change
    create_table :loanstepeightguarantors do |t|
      t.integer :cust_id
      t.integer :custloan_id
      t.string :guarantor_name
      t.datetime :sign_date
      t.string :attachment_file1

      t.timestamps
    end
  end
end
