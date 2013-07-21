class CreateLoanstepsixths < ActiveRecord::Migration
  def change
    create_table :loanstepsixths do |t|
      t.integer :cust_id
      t.integer :custloan_id
      t.boolean :couples_is_appear
      t.boolean :owner_is_appear
      t.datetime :contract_date
      t.string :sign_location
      t.string :bank_broker
      t.integer :user_id

      t.timestamps
    end
  add_index(:loanstepsixths, :custloan_id, :unique => true)
  end
end
