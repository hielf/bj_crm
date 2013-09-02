class ChangeColumnIfNotarizationLoanstepsixths < ActiveRecord::Migration
  def up
    remove_column :loanstepsixths, :if_notarization
    add_column :loanstepsixths, :if_notarization, :boolean
  end

  def down
    # change_column :loanstepsixths, :if_notarization, :integer
  end
end
