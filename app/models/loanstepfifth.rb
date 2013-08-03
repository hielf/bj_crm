class Loanstepfifth < ActiveRecord::Base
  attr_accessible :cust_id, :custloan_id, :pass, :requirement, :requirement_detail, :attachment_file1
  
  belongs_to :custloan
  
  mount_uploader :attachment_file1, AttachmentUploader
end
# == Schema Information
#
# Table name: loanstepfifths
#
#  id                 :integer         not null, primary key
#  cust_id            :integer
#  custloan_id        :integer
#  pass               :boolean
#  requirement        :boolean
#  requirement_detail :string(255)
#  created_at         :datetime        not null
#  updated_at         :datetime        not null
#  attachment_file1   :string(255)
#

