class AddUserIdToLoanreports < ActiveRecord::Migration
  def change
    add_column :loanreports, :user_id, :integer
  end
end
