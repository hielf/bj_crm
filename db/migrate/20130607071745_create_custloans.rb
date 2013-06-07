class CreateCustloans < ActiveRecord::Migration
  def change
    create_table :custloans do |t|
      t.integer :cust_id
      t.integer :status
      t.integer :user_id
      t.decimal :total_amount
      t.integer :guarantee_type
      t.datetime :begin_date
      t.datetime :end_date
      t.string :pawn
      t.integer :bank
      t.string :bank_contact
      t.string :mobile

      t.timestamps
    end
  end
end
