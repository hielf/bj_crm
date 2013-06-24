class CreateLoanstepfours < ActiveRecord::Migration
  def change
    create_table :loanstepfours do |t|
      t.integer :cust_id
      t.integer :custloan_id
      t.integer :user_id
      t.string :emp_phone
      t.float :request_amont
      t.integer :loan_period
      t.float :loan_rate
      t.float :rest_amont
      t.integer :credit_level
      t.integer :loan_type
      t.string :guarantor
      t.integer :guarantor_credit_level
      t.string :pawn
      t.float :pawn_rate
      t.integer :loan_fund_type

      t.timestamps
    end
  end
end
