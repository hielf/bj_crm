class CreateCustloans < ActiveRecord::Migration
  def change
    create_table :custloans do |t|
      t.integer :cust
      t.integer :status
      t.datetime :begindate
      t.datetime :enddate
      t.integer :operator

      t.timestamps
    end
  end
end
