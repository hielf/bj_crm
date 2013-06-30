class Notice < ActiveRecord::Base
  attr_accessible :assist_user_id, :cust_id, :note, :status, :user_id, :vaild_date, :custloan_id,
                  :note_type
  
  belongs_to :user
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
#

