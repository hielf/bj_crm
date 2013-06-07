class CreateCustrels < ActiveRecord::Migration
  def change
    create_table :custrels do |t|
      t.integer :user_id
      t.integer :cust_id

      t.timestamps
    end
  end
end
