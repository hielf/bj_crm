class Custloan < ActiveRecord::Base
  attr_accessible :bank, :bank_contact, :begin_date, :cust_id, :end_date, :guarantee_type, :mobile, 
                  :pawn, :status, :total_amount, :user_id, :current_step, :loanstepones_attributes,
                  :loansteptwos_attributes, :loanstepthrees_attributes
  
  belongs_to :cust
  
  has_many :loanstepones
  has_many :loansteptwos
  has_many :loanstepthrees
  
  validates :total_amount,  :presence => true
  validates :cust_id,  :presence => true

  accepts_nested_attributes_for :loanstepones
  accepts_nested_attributes_for :loansteptwos#, \
    # :reject_if => proc {|attributes| attributes['filename'].blank? \
    # && attributes['filename_cache'].blank?}
  accepts_nested_attributes_for :loanstepthrees
  
  def self.nextstep(id)
    custloan = Custloan.find(id)
    current_step = custloan.current_step
    if current_step >= 1 && current_step < 10
      current_step+1
    end
  end
  
  def self.prevstep(id)
    custloan = Custloan.find(id)
    current_step = custloan.current_step
    if current_step <= 10 && current_step > 1
      current_step-1
    end
  end
end
# == Schema Information
#
# Table name: custloans
#
#  id             :integer         not null, primary key
#  cust_id        :integer
#  status         :integer
#  user_id        :integer
#  total_amount   :float
#  guarantee_type :integer
#  begin_date     :datetime
#  end_date       :datetime
#  pawn           :string(255)
#  bank           :integer
#  bank_contact   :string(255)
#  mobile         :string(255)
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#  current_step   :integer
#

