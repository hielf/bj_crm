class Loanstepthree < ActiveRecord::Base
  attr_accessible :bank_emp, :company_id, :cust_id, :custloan_id, :end_time, :visit_place, :visit_time,
                  :subject
  
  belongs_to :custloan
end
