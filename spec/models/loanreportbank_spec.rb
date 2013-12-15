require 'spec_helper'

describe Loanreportbank do
  pending "add some examples to (or delete) #{__FILE__}"
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

