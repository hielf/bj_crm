require 'spec_helper'

describe Loanpaymentplan do
  pending "add some examples to (or delete) #{__FILE__}"
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

