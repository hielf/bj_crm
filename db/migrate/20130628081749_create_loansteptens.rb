class CreateLoansteptens < ActiveRecord::Migration
  def change
    create_table :loansteptens do |t|
      t.integer :cust_id
      t.integer :custloan_id
      t.integer :user_id

      t.timestamps
    end
    add_index(:loansteptens, :custloan_id, :unique => true)      
  end
end
