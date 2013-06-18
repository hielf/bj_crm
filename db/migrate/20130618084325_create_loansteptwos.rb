class CreateLoansteptwos < ActiveRecord::Migration
  def change
    create_table :loansteptwos do |t|
      t.integer :cust_id
      t.integer :custloan_id
      t.string :attachment_file1
      t.string :attachment_file2
      t.string :attachment_file3
      t.string :attachment_file4
      t.string :attachment_file5

      t.timestamps
    end
    
  add_index(:loansteptwos, :custloan_id, :unique => true)
  end
end
