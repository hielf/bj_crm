class Loansteptwo < ActiveRecord::Base
  attr_accessible :attachment_file1, :attachment_file2, :attachment_file3, :attachment_file4,
                  :attachment_file5, :cust_id, :custloan_id
                  
  belongs_to :custloan, polymorphic: true
  
  mount_uploader :attachment_file1, AttachmentUploader
  mount_uploader :attachment_file2, AttachmentUploader
  mount_uploader :attachment_file3, AttachmentUploader
  mount_uploader :attachment_file4, AttachmentUploader
  mount_uploader :attachment_file5, AttachmentUploader
  
  # validates :attachment_file1, :presence => true
  # validates :attachment_file2, :presence => true
  # validates :attachment_file3, :presence => true
  # validates :attachment_file4, :presence => true
  # validates :attachment_file5, :presence => true
end
# == Schema Information
#
# Table name: loansteptwos
#
#  id               :integer         not null, primary key
#  cust_id          :integer
#  custloan_id      :integer
#  attachment_file1 :string(255)
#  attachment_file2 :string(255)
#  attachment_file3 :string(255)
#  attachment_file4 :string(255)
#  attachment_file5 :string(255)
#  created_at       :datetime        not null
#  updated_at       :datetime        not null
#

