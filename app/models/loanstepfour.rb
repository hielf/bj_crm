class Loanstepfour < ActiveRecord::Base
  attr_accessible :credit_level, :cust_id, :custloan_id, :emp_phone, :guarantor, 
                  :guarantor_credit_level, :loan_fund_type, :loan_period, :loan_rate, :loan_type, 
                  :pawn, :pawn_rate, :request_amont, :rest_amont, :user_id
                  
  belongs_to :custloan
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

