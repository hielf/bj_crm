class ChangeInvoiceStatusFormatInLoanstepones < ActiveRecord::Migration
  def up
    change_column :loanstepones, :invoice_status, :string 
    change_column :loanstepones, :tex_status, :string
  end

  def down
    change_column :loanstepones, :invoice_status, :integer 
    change_column :loanstepones, :tex_status, :integer
  end
end
