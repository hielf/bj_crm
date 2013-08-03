class CreateLoanstepfours < ActiveRecord::Migration
  def change
    create_table :loanstepfours do |t|
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
      t.string :invoice_status
      t.string :tex_status
      t.datetime :request_date
      t.string :stream_status_company
      t.string :stream_status_other

      t.timestamps
    end
  end
end
