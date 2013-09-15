class Loanstepseven < ActiveRecord::Base
  attr_accessible :account_code, :account_name, :attachment_file1, :attachment_file10,
                  :attachment_file2, :attachment_file3, :attachment_file4, :attachment_file5,
                  :attachment_file6, :attachment_file7, :attachment_file8, :attachment_file9, 
                  :bank, :bank_account_type, :cust_id, :custloan_id, :open_date, :attachment_file11

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
end
# == Schema Information
#
# Table name: loanstepsevens
#
#  id                :integer         not null, primary key
#  cust_id           :integer
#  custloan_id       :integer
#  bank_account_type :integer
#  account_name      :string(255)
#  bank              :integer
#  account_code      :string(255)
#  open_date         :datetime
#  attachment_file1  :string(255)
#  attachment_file2  :string(255)
#  attachment_file3  :string(255)
#  attachment_file4  :string(255)
#  attachment_file5  :string(255)
#  attachment_file6  :string(255)
#  attachment_file7  :string(255)
#  attachment_file8  :string(255)
#  attachment_file9  :string(255)
#  attachment_file10 :string(255)
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#  attachment_file11 :string(255)
#  memo              :string(255)
#

