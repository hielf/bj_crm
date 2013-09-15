class Loanpaymentplan < ActiveRecord::Base
  attr_accessor   :cust_name, :loan_type
  attr_accessible :contract_num, :cur, :loan_amount, :loan_begindate, :loan_deadline, :loan_enddate, :loan_num,
                  :payment_type, :cust_id, :custloan_id
                  
  belongs_to :custloan
end
# == Schema Information
#
# Table name: loanpaymentplans
#
#  id             :integer         not null, primary key
#  contract_num   :string(255)
#  loan_num       :string(255)
#  cur            :integer
#  loan_amount    :float
#  loan_deadline  :integer
#  loan_begindate :datetime
#  loan_enddate   :datetime
#  payment_type   :integer
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#  custloan_id    :integer
#  cust_id        :integer
#

