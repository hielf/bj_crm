class Loanstepnine < ActiveRecord::Base
  attr_accessible :cust_id, :custloan_id, :loan_date, :attachment_file1, :loan_amount
  
  belongs_to :custloan
  
  mount_uploader :attachment_file1, AttachmentUploader
end
# == Schema Information
#
# Table name: loanstepnines
#
#  id               :integer         not null, primary key
#  cust_id          :integer
#  custloan_id      :integer
#  loan_date        :datetime
#  created_at       :datetime        not null
#  updated_at       :datetime        not null
#  loan_amount      :float
#  attachment_file1 :string(255)
#  memo             :string(255)
#

