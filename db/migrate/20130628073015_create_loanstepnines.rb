class CreateLoanstepnines < ActiveRecord::Migration
  def change
    create_table :loanstepnines do |t|
      t.integer :cust_id
      t.integer :custloan_id
      t.datetime :loan_date

      t.timestamps
    end
    add_index(:loanstepnines, :custloan_id, :unique => true)  
  end
end
