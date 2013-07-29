class CreateLoansteponeguarantees < ActiveRecord::Migration
  def change
    create_table :loansteponeguarantees do |t|
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
    add_index(:loansteponeguarantees, :custloan_id)  
  end
end
