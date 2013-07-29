class AddBrokerIdToLoanstepthrees < ActiveRecord::Migration
  def change
    add_column :loanstepthrees, :broker_id, :integer
  end
end
