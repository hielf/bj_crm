require 'spec_helper'

describe Notice do
  pending "add some examples to (or delete) #{__FILE__}"
end
# == Schema Information
#
# Table name: notices
#
#  id             :integer         not null, primary key
#  user_id        :integer
#  cust_id        :integer
#  assist_user_id :integer
#  status         :integer
#  vaild_date     :datetime
#  note           :string(255)
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#  custloan_id    :integer
#  note_type      :integer
#

