class CreateLoanstepfifths < ActiveRecord::Migration
  def change
    create_table :loanstepfifths do |t|
      t.integer :cust_id
      t.integer :custloan_id
      t.boolean :pass
      t.boolean :requirement
      t.string :requirement_detail

      t.timestamps
    end
  add_index(:loanstepfifths, :custloan_id, :unique => true)
  end
end
