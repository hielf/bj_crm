class CreateLoaninterestplans < ActiveRecord::Migration
  def change
    create_table :loaninterestplans do |t|
      t.integer :cust_id
      t.integer :loanreport_id
      t.integer :user_id
      t.float :interest
      t.date :plan_date

      t.timestamps
    end
    add_index(:loaninterestplans, :loanreport_id)
  end
end
