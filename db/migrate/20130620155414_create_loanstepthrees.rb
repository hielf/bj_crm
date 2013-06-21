class CreateLoanstepthrees < ActiveRecord::Migration
  def change
    create_table :loanstepthrees do |t|
      t.integer :cust_id
      t.integer :custloan_id
      t.datetime :visit_time
      t.string :visit_place
      t.integer :company_id
      t.string :bank_emp
      t.datetime :end_time

      t.timestamps
    end
  add_index(:loanstepthrees, :custloan_id, :unique => true)
  end
end
