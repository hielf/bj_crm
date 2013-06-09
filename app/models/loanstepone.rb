class Loanstepone < ActiveRecord::Base
  attr_accessible :companyaddress, :companyname, :current_loan_status, :cust_id, :cust_request_type, 
                  :custloan_id, :custname, :custtype, :estate_address, :estate_area, :estate_owner,     
                  :guarantee_type, :invoice_status, :phone, :request_amont, :request_interest, 
                  :special_request, :stream_status, :tex_status
end
