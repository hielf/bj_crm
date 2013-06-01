class CreateCusts < ActiveRecord::Migration
  def change
    create_table :custs do |t|
      t.string :fullname
      t.string :phone
      t.string :company
      t.string :workaddress
      t.string :custtype

      t.timestamps
    end
  end
end
