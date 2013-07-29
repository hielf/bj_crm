class CreateLoansteponeassets < ActiveRecord::Migration
  def change
    create_table :loansteponeassets do |t|
      t.integer :custloan_id
      t.integer :cust_id
      t.integer :asset_type
      t.string :describe

      t.timestamps
    end
    add_index(:loansteponeassets, :custloan_id)  
  end
end
