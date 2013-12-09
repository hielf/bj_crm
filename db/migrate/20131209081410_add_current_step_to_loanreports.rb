class AddCurrentStepToLoanreports < ActiveRecord::Migration
  def change
    add_column :loanreports, :current_step, :integer
  end
end
