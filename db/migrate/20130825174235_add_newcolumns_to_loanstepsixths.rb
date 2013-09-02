class AddNewcolumnsToLoanstepsixths < ActiveRecord::Migration
  def change
    add_column :loanstepsixths, :if_notarization, :integer
    add_column :loanstepsixths, :notarization_bank_broker, :string
    add_column :loanstepsixths, :notarization_user_id, :integer
    add_column :loanstepsixths, :notarization_custs, :string
    add_column :loanstepsixths, :has_notarization_stuff, :boolean
  end
end
