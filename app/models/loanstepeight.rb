class Loanstepeight < ActiveRecord::Base
  attr_accessible :available_repayment_date, :cust_id, :custloan_id, :guaranty_date, :has_guaranty,
                  :has_license_code, :other_complete_date, :repayment_date, :revoke_complete_date,
                  :revoke_date, :if_credit
                  
  belongs_to :custloan
end
# == Schema Information
#
# Table name: loanstepeights
#
#  id                       :integer         not null, primary key
#  cust_id                  :integer
#  custloan_id              :integer
#  has_guaranty             :boolean
#  has_license_code         :boolean
#  guaranty_date            :datetime
#  other_complete_date      :datetime
#  repayment_date           :datetime
#  available_repayment_date :datetime
#  revoke_date              :datetime
#  revoke_complete_date     :datetime
#  created_at               :datetime        not null
#  updated_at               :datetime        not null
#  if_credit                :boolean
#

