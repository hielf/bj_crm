class AddLoaninterestplanIdToNotices < ActiveRecord::Migration
  def change
    add_column :notices, :loaninterestplan_id, :integer
  end
end
