class CreateLoanreportcustomers < ActiveRecord::Migration
  def change
    create_table :loanreportcustomers do |t|
      t.integer :loanreport_id
      t.integer :cust_type
      t.integer :cust_region
      t.string :company_name
      t.string :boss
      t.string :contact
      t.string :address
      t.string :financial

      t.timestamps
    end
    add_index :loanreportcustomers, :loanreport_id
  end
end
