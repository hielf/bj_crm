class AddIndexInDicts < ActiveRecord::Migration
  def up
    add_index(:dicts, [:dict_type, :code], :unique => true)
  end

  def down
  end
end
