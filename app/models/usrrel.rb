class Usrrel < ActiveRecord::Base
  attr_accessible :mgr, :usr
  
  belongs_to :superior, :class_name => "User", :foreign_key => "usr"
  has_many   :underlings, :class_name => "User", :foreign_key => "mgr"
  
  validates :mgr, :presence => true
  validates :usr, :presence => true
end
# == Schema Information
#
# Table name: usrrels
#
#  id         :integer         not null, primary key
#  mgr        :integer
#  usr        :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

