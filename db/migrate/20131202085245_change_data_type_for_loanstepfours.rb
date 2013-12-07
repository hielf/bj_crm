class ChangeDataTypeForLoanstepfours < ActiveRecord::Migration
  def up
    change_column :loanstepfours, :cust_request_type, :string
  end

  def down
  end
end
