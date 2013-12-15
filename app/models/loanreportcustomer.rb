class Loanreportcustomer < ActiveRecord::Base
  attr_accessible :address, :boss, :company_name, :contact, :cust_type, :cust_region, :financial, :loanreport_id
  
  belongs_to :loanreport
end
# == Schema Information
#
# Table name: loanreportcustomers
#
#  id            :integer         not null, primary key
#  loanreport_id :integer
#  cust_type     :integer
#  cust_region   :integer
#  company_name  :string(255)
#  boss          :string(255)
#  contact       :string(255)
#  address       :string(255)
#  financial     :string(255)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

