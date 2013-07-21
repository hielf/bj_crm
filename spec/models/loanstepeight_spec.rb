require 'spec_helper'

describe Loanstepeight do
  pending "add some examples to (or delete) #{__FILE__}"
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
#

