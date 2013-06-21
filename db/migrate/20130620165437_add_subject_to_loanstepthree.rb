class AddSubjectToLoanstepthree < ActiveRecord::Migration
  def change
    add_column :loanstepthrees, :subject, :string
  end
end
