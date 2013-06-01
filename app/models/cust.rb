class Cust < ActiveRecord::Base
  attr_accessible :company, :custtype, :fullname, :phone, :workaddress
end
