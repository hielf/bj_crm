class CreateLoanstepfourguarantees < ActiveRecord::Migration
  def change
    create_table :loanstepfourguarantees do |t|
      t.integer :custloan_id
      t.integer :cust_id
      t.string :address
      t.string :area
      t.string :owner
      t.integer :estate_type
      t.string :complete_year
      t.string :floor
      t.string :describe

      t.timestamps
    end
    add_index(:loanstepfourguarantees, :custloan_id)  
  end
end
