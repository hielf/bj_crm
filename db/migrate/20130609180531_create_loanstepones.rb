class CreateLoanstepones < ActiveRecord::Migration
  def change
    create_table :loanstepones do |t|
      t.integer :cust_id
      t.integer :custloan_id
      t.string :companyname
      t.string :companyaddress
      t.string :custname
      t.string :phone
      t.float :request_amont
      t.integer :guarantee_type
      t.float :request_interest
      t.string :special_request
      t.string :current_loan_status
      t.string :estate_address
      t.string :estate_area
      t.string :estate_owner
      t.string :stream_status
      t.integer :cust_request_type
      t.integer :custtype
      t.integer :invoice_status
      t.integer :tex_status

      t.timestamps
    end
  end
end
