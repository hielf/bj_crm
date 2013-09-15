require 'spec_helper'

describe Custloan do
  pending "add some examples to (or delete) #{__FILE__}"
end
# == Schema Information
#
# Table name: custloans
#
#  id             :integer         not null, primary key
#  cust_id        :integer
#  status         :integer
#  user_id        :integer
#  total_amount   :float
#  guarantee_type :integer
#  begin_date     :datetime
#  end_date       :datetime
#  pawn           :string(255)
#  bank           :integer
#  bank_contact   :string(255)
#  mobile         :string(255)
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#  current_step   :integer
#  memo           :string(255)
#  serv_user_id   :integer
#

