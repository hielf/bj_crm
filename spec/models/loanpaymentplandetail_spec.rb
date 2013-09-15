require 'spec_helper'

describe Loanpaymentplandetail do
  pending "add some examples to (or delete) #{__FILE__}"
end
# == Schema Information
#
# Table name: loanpaymentplandetails
#
#  id           :integer         not null, primary key
#  time_number  :integer
#  payment_date :date
#  capital      :float
#  interest     :float
#  sub_total    :float
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#  custloan_id  :integer
#  cust_id      :integer
#

