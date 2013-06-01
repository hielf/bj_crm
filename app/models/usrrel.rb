class Usrrel < ActiveRecord::Base
  attr_accessible :mgr, :usr
  
  belongs_to :mgr, :class_name => "User", :foreign_key => "mgr"
  belongs_to :usr, :class_name => "User", :foreign_key => "usr"
  
  validates :mgr, :presence => true
  validates :usr, :presence => true
end
