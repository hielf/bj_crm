class CreateCustrels < ActiveRecord::Migration
  def change
    create_table :custrels do |t|
      t.integer :usr
      t.integer :cust

      t.timestamps
    end
  end
end
