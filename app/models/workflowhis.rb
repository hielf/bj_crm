class Workflowhis < ActiveRecord::Base
  attr_accessible :content, :flowid, :remark
end
# == Schema Information
#
# Table name: workflowhis
#
#  id         :integer         not null, primary key
#  flowid     :integer
#  content    :string(255)
#  remark     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

