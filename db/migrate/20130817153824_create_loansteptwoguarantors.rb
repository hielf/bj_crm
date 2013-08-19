class CreateLoansteptwoguarantors < ActiveRecord::Migration
  def change
    create_table :loansteptwoguarantors do |t|
      t.integer :cust_id
      t.integer :custloan_id
      t.integer :bank
      t.string :attachment_file1
      t.string :attachment_file2
      t.string :attachment_file3
      t.string :attachment_file4
      t.string :attachment_file5
      t.string  :attachment_file6
      t.string  :attachment_file7
      t.string  :attachment_file8
      t.string  :attachment_file9
      t.string  :attachment_file10
      t.string  :attachment_file11
      t.string  :attachment_file12
      t.string  :attachment_file13
      t.string  :attachment_file14
      t.string  :attachment_file15
      t.string  :attachment_file16
      t.string  :attachment_file17
      t.string  :attachment_file18
      t.string  :attachment_file19
      t.string  :attachment_file20
      t.string  :attachment_file21
      t.string :attachment_file22
      t.string :attachment_file23
      t.string :attachment_file24
      t.string :attachment_file25
      t.string :attachment_file26
      t.string :attachment_file27
      t.string :attachment_file28
      t.string :attachment_file29
      t.string :attachment_file30
      t.string :attachment_file31
      t.string :attachment_file32
      t.string :attachment_file33
      
      t.timestamps
    end
  end
end
