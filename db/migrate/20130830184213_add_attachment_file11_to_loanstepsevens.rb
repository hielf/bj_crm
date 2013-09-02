class AddAttachmentFile11ToLoanstepsevens < ActiveRecord::Migration
  def change
    add_column :loanstepsevens, :attachment_file11, :string
  end
end
