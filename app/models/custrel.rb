class Custrel < ActiveRecord::Base
  attr_accessible :cust_id, :user_id
  
  belongs_to :user
  belongs_to :cust#, :class_name => "Cust", :foreign_key => "cust"
  # has_many :custs, :class_name => "Cust", :primary_key => "cust_id"
  
  # validates :cust, :presence => true
  # validates :usr, :presence => true
end
