class Loanstepsixth < ActiveRecord::Base
  attr_accessible :bank_broker, :contract_date, :couples_is_appear, :cust_id, :custloan_id,
                  :owner_is_appear, :sign_location, :user_id
                  
  belongs_to :custloan
end
# == Schema Information
#
# Table name: loanstepsixths
#
#  id                :integer         not null, primary key
#  cust_id           :integer
#  custloan_id       :integer
#  couples_is_appear :boolean
#  owner_is_appear   :boolean
#  contract_date     :datetime
#  sign_location     :string(255)
#  bank_broker       :string(255)
#  user_id           :integer
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#

