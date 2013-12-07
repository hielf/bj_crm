class AddSubmitAmontToLoanstepfifths < ActiveRecord::Migration
  def change
    add_column :loanstepfifths, :submit_amont, :float
  end
end
