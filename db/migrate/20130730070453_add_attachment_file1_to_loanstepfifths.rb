class AddAttachmentFile1ToLoanstepfifths < ActiveRecord::Migration
  def change
    add_column :loanstepfifths, :attachment_file1, :string
  end
end
