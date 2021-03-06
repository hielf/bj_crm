class Loanstepfour < ActiveRecord::Base
  attr_accessible :companyaddress, :companyname, :current_loan_status, :cust_id, :cust_request_type,
                  :custloan_id, :custname, :custtype, :estate_address, :estate_area, :estate_owner,
                  :guarantee_type, :invoice_status, :phone, :request_amont, :request_date,
                  :request_interest, :special_request, :stream_status, :stream_status_company,
                  :stream_status_other, :tex_status

  belongs_to :custloan
end

# == Schema Information
#
# Table name: loanstepfours
#
#  id                    :integer         not null, primary key
#  cust_id               :integer
#  custloan_id           :integer
#  companyname           :string(255)
#  companyaddress        :string(255)
#  custname              :string(255)
#  phone                 :string(255)
#  request_amont         :float
#  guarantee_type        :integer
#  request_interest      :float
#  special_request       :string(255)
#  current_loan_status   :string(255)
#  estate_address        :string(255)
#  estate_area           :string(255)
#  estate_owner          :string(255)
#  stream_status         :string(255)
#  cust_request_type     :string(255)
#  custtype              :integer
#  invoice_status        :integer
#  tex_status            :integer
#  request_date          :datetime
#  stream_status_company :string(255)
#  stream_status_other   :string(255)
#  created_at            :datetime        not null
#  updated_at            :datetime        not null
#  memo                  :string(255)
#

