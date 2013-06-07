class Cust < ActiveRecord::Base
  attr_accessible :company, :custtype, :fullname, :phone, :workaddress, :user_ids
  
  has_many :custrel#, :class_name => "Custrel", :foreign_key => "cust"  
  has_many :users, :through => :custrel, :source => :user
  # belongs_to :custrel
   
  # has_many :userpositionrels, :dependent => :destroy, 
  #                             :foreign_key => "positionid"
  # has_many :users,            :through => :userpositionrels, 
  #                             :source => :user
  
end
# == Schema Information
#
# Table name: custs
#
#  id          :integer         not null, primary key
#  fullname    :string(255)
#  phone       :string(255)
#  company     :string(255)
#  workaddress :string(255)
#  custtype    :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

