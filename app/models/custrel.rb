class Custrel < ActiveRecord::Base
  attr_accessible :cust, :usr
  
  belongs_to :user, :class_name => "User", :foreign_key => "usr"
  belongs_to :cust, :class_name => "Cust", :foreign_key => "cust"
  
  validates :cust, :presence => true
  validates :usr, :presence => true
  
end
# == Schema Information
#
# Table name: custrels
#
#  id         :integer         not null, primary key
#  usr        :integer
#  cust       :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

