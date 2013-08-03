class AddColumnsToLoanstepsixths < ActiveRecord::Migration
  def change
    add_column :loanstepsixths, :has_stuff, :boolean
    add_column :loanstepsixths, :notarization_date, :datetime
    add_column :loanstepsixths, :notarization_place, :string
    add_column :loanstepsixths, :notarization_man, :string
    add_column :loanstepsixths, :custs, :string
  end
end
