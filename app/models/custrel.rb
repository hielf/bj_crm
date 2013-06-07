class Custrel < ActiveRecord::Base
  attr_accessible :cust_id, :user_id
  
  belongs_to :user
  belongs_to :cust
  
  validates :cust_id, :presence => true
  validates :user_id, :presence => true
end
# == Schema Information
#
# Table name: custrels
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  cust_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

