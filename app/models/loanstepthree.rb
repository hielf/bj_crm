class Loanstepthree < ActiveRecord::Base
  attr_accessible :bank_emp, :company_id, :cust_id, :custloan_id, :end_time, :visit_place, :visit_time,
                  :subject
  
  belongs_to :custloan
end
# == Schema Information
#
# Table name: loanstepthrees
#
#  id          :integer         not null, primary key
#  cust_id     :integer
#  custloan_id :integer
#  visit_time  :datetime
#  visit_place :string(255)
#  company_id  :integer
#  bank_emp    :string(255)
#  end_time    :datetime
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  subject     :string(255)
#

