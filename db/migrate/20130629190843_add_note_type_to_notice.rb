class AddNoteTypeToNotice < ActiveRecord::Migration
  def change
    add_column :notices, :note_type, :integer
  end
end
