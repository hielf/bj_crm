class Loanstepsixth < ActiveRecord::Base
  attr_accessible :bank_broker, :contract_date, :couples_is_appear, :cust_id, :custloan_id,
                  :owner_is_appear, :sign_location, :user_id, :contract_type, :custs, :notarization_man,
                  :notarization_place, :notarization_place, :notarization_date, :has_stuff,
                  :if_notarization, :notarization_bank_broker, :notarization_user_id,
                  :notarization_custs, :has_notarization_stuff
                  
  belongs_to :custloan
  
  validates :contract_type, :presence => true
end
# == Schema Information
#
# Table name: loanstepsixths
#
#  id                       :integer         not null, primary key
#  cust_id                  :integer
#  custloan_id              :integer
#  couples_is_appear        :boolean
#  owner_is_appear          :boolean
#  contract_date            :datetime
#  sign_location            :string(255)
#  bank_broker              :string(255)
#  user_id                  :integer
#  created_at               :datetime        not null
#  updated_at               :datetime        not null
#  has_stuff                :boolean
#  notarization_date        :datetime
#  notarization_place       :string(255)
#  notarization_man         :string(255)
#  custs                    :string(255)
#  contract_type            :integer
#  notarization_bank_broker :string(255)
#  notarization_user_id     :integer
#  notarization_custs       :string(255)
#  has_notarization_stuff   :boolean
#  if_notarization          :boolean
#  memo                     :string(255)
#

