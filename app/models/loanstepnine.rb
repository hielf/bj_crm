class Loanstepnine < ActiveRecord::Base
  attr_accessible :cust_id, :custloan_id, :loan_date
  
  belongs_to :custloan
end
# == Schema Information
#
# Table name: loanstepnines
#
#  id          :integer         not null, primary key
#  cust_id     :integer
#  custloan_id :integer
#  loan_date   :datetime
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

