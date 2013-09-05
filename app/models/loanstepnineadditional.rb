class Loanstepnineadditional < ActiveRecord::Base
  attr_accessor :attachment_file1_url
  attr_accessible :attachment_file1, :cust_id, :custloan_id, :loan_amount, :loan_date
  
  belongs_to :custloan
  
  mount_uploader :attachment_file1, AttachmentUploader
  
  def attributes
    {'attachment_file1_url' => @attachment_file1_url}
  end
end
# == Schema Information
#
# Table name: loanstepnineadditionals
#
#  id               :integer         not null, primary key
#  cust_id          :integer
#  custloan_id      :integer
#  loan_date        :datetime
#  attachment_file1 :string(255)
#  created_at       :datetime        not null
#  updated_at       :datetime        not null
#  loan_amount      :float
#

