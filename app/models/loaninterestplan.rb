class Loaninterestplan < ActiveRecord::Base
  acts_as_birthday :plan_date
  attr_accessible :cust_id, :interest, :loanreport_id, :plan_date, :user_id
  
  belongs_to :loanreport
  
  scope :cust_plans, lambda { |cust| where("cust_id = ?", cust) } 
end
# == Schema Information
#
# Table name: loaninterestplans
#
#  id            :integer         not null, primary key
#  cust_id       :integer
#  loanreport_id :integer
#  user_id       :integer
#  interest      :float
#  plan_date     :date
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

