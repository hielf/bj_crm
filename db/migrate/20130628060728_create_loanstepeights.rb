class CreateLoanstepeights < ActiveRecord::Migration
  def change
    create_table :loanstepeights do |t|
      t.integer :cust_id
      t.integer :custloan_id
      t.boolean :has_guaranty
      t.boolean :has_license_code
      t.datetime :guaranty_date
      t.datetime :other_complete_date
      t.datetime :repayment_date
      t.datetime :available_repayment_date
      t.datetime :revoke_date
      t.datetime :revoke_complete_date

      t.timestamps
    end
    
    add_index(:loanstepeights, :custloan_id, :unique => true)  
  end
end
