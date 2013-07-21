class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.integer :user_id
      t.integer :cust_id
      t.integer :assist_user_id
      t.integer :status
      t.datetime :vaild_date
      t.string :note

      t.timestamps
    end
    
  add_index(:notices, :user_id)    
  add_index(:notices, :cust_id)  
  end
end
