class Loanstepfourasset < ActiveRecord::Base
  attr_accessible :asset_type, :cust_id, :custloan_id, :describe
  
  belongs_to :custloan
end
# == Schema Information
#
# Table name: loanstepfourassets
#
#  id          :integer         not null, primary key
#  custloan_id :integer
#  cust_id     :integer
#  asset_type  :integer
#  describe    :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

