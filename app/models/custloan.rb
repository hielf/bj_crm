class Custloan < ActiveRecord::Base
  attr_accessible :bank, :bank_contact, :begin_date, :cust_id, :end_date, :guarantee_type, :mobile, 
                  :pawn, :status, :total_amount, :user_id, :current_step, :loanstepones_attributes,
                  :loansteptwos_attributes, :loanstepthrees_attributes, :loanstepfours_attributes,
                  :loanstepfifths_attributes, :loanstepsixths_attributes, :loanstepsevens_attributes,
                  :loanstepeights_attributes, :loanstepnines_attributes, :loansteptens_attributes,
                  :loansteponeguarantees_attributes, :loansteponeassets_attributes,
                  :loanstepfourguarantees_attributes, :loanstepfourassets_attributes,
                  :loansteptwoguarantors_attributes, :loanstepsevenadditionals_attributes,
                  :loanstepeightguarantors_attributes
  
  belongs_to :cust
  
  has_many :loanstepones
  has_many :loansteptwos
  has_many :loanstepthrees
  has_many :loanstepfours
  has_many :loanstepfifths
  has_many :loanstepsixths
  has_many :loanstepsevens
  has_many :loanstepeights
  has_many :loanstepnines
  has_many :loansteptens
  has_many :loansteponeguarantees
  has_many :loansteponeassets
  has_many :loanstepfourguarantees
  has_many :loanstepfourassets
  has_many :loansteptwoguarantors
  has_many :loanstepsevenadditionals
  has_many :loanstepeightguarantors
  
  # validates :total_amount,  :presence => true
  # validates :cust_id,  :presence => true

  accepts_nested_attributes_for :loanstepones
  accepts_nested_attributes_for :loansteptwos#, \
    # :reject_if => proc {|attributes| attributes['filename'].blank? \
    # && attributes['filename_cache'].blank?}
  accepts_nested_attributes_for :loanstepthrees
  accepts_nested_attributes_for :loanstepfours
  accepts_nested_attributes_for :loanstepfifths
  accepts_nested_attributes_for :loanstepsixths
  accepts_nested_attributes_for :loanstepsevens
  accepts_nested_attributes_for :loanstepeights
  accepts_nested_attributes_for :loanstepnines
  accepts_nested_attributes_for :loansteptens
  accepts_nested_attributes_for :loansteponeguarantees
  accepts_nested_attributes_for :loansteponeassets
  accepts_nested_attributes_for :loanstepfourguarantees
  accepts_nested_attributes_for :loanstepfourassets
  accepts_nested_attributes_for :loansteptwoguarantors
  accepts_nested_attributes_for :loanstepsevenadditionals
  accepts_nested_attributes_for :loanstepeightguarantors
  
  scope :status3, where(:status => Dict.find_by_dict_type_and_code("loanStatus",3))
  
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

