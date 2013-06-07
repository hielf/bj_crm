class Custloan < ActiveRecord::Base
  attr_accessible :bank, :bank_contact, :begin_date, :cust_id, :end_date, :guarantee_type, :mobile, :pawn, :status, :total_amount, :user_id
end
