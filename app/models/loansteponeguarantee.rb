class Loansteponeguarantee < ActiveRecord::Base
  attr_accessible :address, :area, :complete_year, :cust_id, :custloan_id, :describe, :estate_type,
                  :floor, :owner
  
  belongs_to :custloan
end
# == Schema Information
#
# Table name: loansteponeguarantees
#
#  id            :integer         not null, primary key
#  custloan_id   :integer
#  cust_id       :integer
#  address       :string(255)
#  area          :string(255)
#  owner         :string(255)
#  estate_type   :integer
#  complete_year :string(255)
#  floor         :string(255)
#  describe      :string(255)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

