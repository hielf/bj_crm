class AddColumnsToLoanstepones < ActiveRecord::Migration
  def change
    add_column :loanstepones, :request_date, :datetime
    add_column :loanstepones, :stream_status_company, :string
    add_column :loanstepones, :stream_status_other, :string
  end
end
