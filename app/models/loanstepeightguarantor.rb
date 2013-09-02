class Loanstepeightguarantor < ActiveRecord::Base
  attr_accessible :attachment_file1, :cust_id, :custloan_id, :guarantor_name, :sign_date
  
  belongs_to :custloan
end
# == Schema Information
#
# Table name: loanstepeightguarantors
#
#  id               :integer         not null, primary key
#  cust_id          :integer
#  custloan_id      :integer
#  guarantor_name   :string(255)
#  sign_date        :datetime
#  attachment_file1 :string(255)
#  created_at       :datetime        not null
#  updated_at       :datetime        not null
#

