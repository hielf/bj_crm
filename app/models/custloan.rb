class Custloan < ActiveRecord::Base
  attr_accessible :bank, :bank_contact, :begin_date, :cust_id, :end_date, :guarantee_type, :mobile, 
                  :pawn, :status, :total_amount, :user_id
  
  belongs_to :cust
  
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
#
