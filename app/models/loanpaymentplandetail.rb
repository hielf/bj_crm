class Loanpaymentplandetail < ActiveRecord::Base
  attr_accessible :capital, :interest, :payment_date, :sub_total, :time_number, :cust_id, :custloan_id
  
  belongs_to :custloan
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

