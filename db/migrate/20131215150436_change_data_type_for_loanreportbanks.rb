class ChangeDataTypeForLoanreportbanks < ActiveRecord::Migration
  def up
    remove_column :loanreportbanks, :bank
    add_column :loanreportbanks, :bank, :integer
  end

  def down
  end
end
