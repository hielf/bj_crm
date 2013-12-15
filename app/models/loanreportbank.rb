class Loanreportbank < ActiveRecord::Base
  attr_accessible :bank, :cust_id, :guarantee_type, :loan_amount, :loanreport_id, :trust_type
  
  belongs_to :loanreport
end
# == Schema Information
#
# Table name: loanreportbanks
#
#  id             :integer         not null, primary key
#  loanreport_id  :integer
#  cust_id        :integer
#  loan_amount    :float
#  trust_type     :integer
#  guarantee_type :integer
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#  bank           :integer
#

