class Loanstepten < ActiveRecord::Base
  attr_accessible :cust_id, :custloan_id, :user_id
  
  belongs_to :custloan
end
# == Schema Information
#
# Table name: loansteptens
#
#  id          :integer         not null, primary key
#  cust_id     :integer
#  custloan_id :integer
#  user_id     :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

