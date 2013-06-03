class Custrel < ActiveRecord::Base
  attr_accessible :cust, :usr
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

