class CreateUsrrels < ActiveRecord::Migration
  def change
    create_table :usrrels do |t|
      t.integer :mgr
      t.integer :usr

      t.timestamps
    end
  end
end
