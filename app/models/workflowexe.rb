class Workflowexe < ActiveRecord::Base
  attr_accessible :content, :flowid, :remark, :step
end
# == Schema Information
#
# Table name: workflowexes
#
#  id         :integer         not null, primary key
#  flowid     :integer
#  step       :integer
#  content    :string(255)
#  remark     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

