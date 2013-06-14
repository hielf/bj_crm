class Brokerrel < ActiveRecord::Base
  belongs_to :broker,    :class_name => "Broker"
  belongs_to :relbroker, :class_name => "Broker"
  
  validates :broker_id,     :presence => true
  validates :rel_broker_id, :presence => true
end
