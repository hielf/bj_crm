class Loansteptwo < ActiveRecord::Base
  attr_accessible :attachment_file1, :attachment_file2, :attachment_file3, :attachment_file4,
                  :attachment_file5, :attachment_file6, :attachment_file7, :attachment_file8,
                  :attachment_file9, :attachment_file10, :attachment_file11, :attachment_file11,
                  :attachment_file12, :attachment_file12, :attachment_file13, :attachment_file14,
                  :attachment_file15, :attachment_file16, :attachment_file17, :attachment_file18,
                  :attachment_file19, :attachment_file20, :attachment_file21, :attachment_file22,
                  :attachment_file23, :attachment_file24, :attachment_file25, :attachment_file26,
                  :attachment_file27, :attachment_file28, :attachment_file29, :attachment_file30,
                  :attachment_file31, :attachment_file32, :attachment_file33, :cust_id, :custloan_id,
                  :bank
                  
  belongs_to :custloan, polymorphic: true
  
  mount_uploader :attachment_file1, AttachmentUploader
  mount_uploader :attachment_file2, AttachmentUploader
  mount_uploader :attachment_file3, AttachmentUploader
  mount_uploader :attachment_file4, AttachmentUploader
  mount_uploader :attachment_file5, AttachmentUploader
  mount_uploader :attachment_file6, AttachmentUploader
  mount_uploader :attachment_file7, AttachmentUploader
  mount_uploader :attachment_file8, AttachmentUploader
  mount_uploader :attachment_file9, AttachmentUploader
  mount_uploader :attachment_file10, AttachmentUploader
  mount_uploader :attachment_file11, AttachmentUploader
  mount_uploader :attachment_file12, AttachmentUploader
  mount_uploader :attachment_file13, AttachmentUploader
  mount_uploader :attachment_file14, AttachmentUploader
  mount_uploader :attachment_file15, AttachmentUploader
  mount_uploader :attachment_file16, AttachmentUploader
  mount_uploader :attachment_file17, AttachmentUploader
  mount_uploader :attachment_file18, AttachmentUploader
  mount_uploader :attachment_file19, AttachmentUploader
  mount_uploader :attachment_file20, AttachmentUploader
  mount_uploader :attachment_file21, AttachmentUploader
  mount_uploader :attachment_file22, AttachmentUploader
  mount_uploader :attachment_file23, AttachmentUploader
  mount_uploader :attachment_file24, AttachmentUploader
  mount_uploader :attachment_file25, AttachmentUploader
  mount_uploader :attachment_file26, AttachmentUploader
  mount_uploader :attachment_file27, AttachmentUploader
  mount_uploader :attachment_file28, AttachmentUploader
  mount_uploader :attachment_file29, AttachmentUploader
  mount_uploader :attachment_file30, AttachmentUploader
  mount_uploader :attachment_file31, AttachmentUploader
  mount_uploader :attachment_file32, AttachmentUploader
  mount_uploader :attachment_file33, AttachmentUploader
  
  
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
#  id                :integer         not null, primary key
#  cust_id           :integer
#  custloan_id       :integer
#  attachment_file1  :string(255)
#  attachment_file2  :string(255)
#  attachment_file3  :string(255)
#  attachment_file4  :string(255)
#  attachment_file5  :string(255)
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#  attachment_file6  :string(255)
#  attachment_file7  :string(255)
#  attachment_file8  :string(255)
#  attachment_file9  :string(255)
#  attachment_file10 :string(255)
#  attachment_file11 :string(255)
#  attachment_file12 :string(255)
#  attachment_file13 :string(255)
#  attachment_file14 :string(255)
#  attachment_file15 :string(255)
#  attachment_file16 :string(255)
#  attachment_file17 :string(255)
#  attachment_file18 :string(255)
#  attachment_file19 :string(255)
#  attachment_file20 :string(255)
#  attachment_file21 :string(255)
#  attachment_file22 :string(255)
#  attachment_file23 :string(255)
#  attachment_file24 :string(255)
#  attachment_file25 :string(255)
#  attachment_file26 :string(255)
#  attachment_file27 :string(255)
#  attachment_file28 :string(255)
#  attachment_file29 :string(255)
#  attachment_file30 :string(255)
#  attachment_file31 :string(255)
#  attachment_file32 :string(255)
#  attachment_file33 :string(255)
#  bank              :integer
#  memo              :string(255)
#

