class AddSubmitAmontToCusts < ActiveRecord::Migration
  def change
    add_column :custs, :birthday, :date
    add_column :custs, :partner_birthday, :date
  end
end
