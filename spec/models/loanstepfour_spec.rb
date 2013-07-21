require 'spec_helper'

describe Loanstepfour do
  pending "add some examples to (or delete) #{__FILE__}"
end
# == Schema Information
#
# Table name: loanstepfours
#
#  id                     :integer         not null, primary key
#  cust_id                :integer
#  custloan_id            :integer
#  user_id                :integer
#  emp_phone              :string(255)
#  request_amont          :float
#  loan_period            :integer
#  loan_rate              :float
#  rest_amont             :float
#  credit_level           :integer
#  loan_type              :integer
#  guarantor              :string(255)
#  guarantor_credit_level :integer
#  pawn                   :string(255)
#  pawn_rate              :float
#  loan_fund_type         :integer
#  created_at             :datetime        not null
#  updated_at             :datetime        not null
#

