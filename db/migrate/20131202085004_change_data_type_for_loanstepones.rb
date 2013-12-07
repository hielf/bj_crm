class ChangeDataTypeForLoanstepones < ActiveRecord::Migration
  def up
    change_column :loanstepones, :cust_request_type, :string
  end

  def down
  end
end
