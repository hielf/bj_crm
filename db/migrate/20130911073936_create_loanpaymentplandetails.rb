class CreateLoanpaymentplandetails < ActiveRecord::Migration
  def change
    create_table :loanpaymentplandetails do |t|
      t.integer :time_number
      t.date :payment_date
      t.float :capital
      t.float :interest
      t.float :sub_total

      t.timestamps
    end
  end
end
