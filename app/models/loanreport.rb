class Loanreport < ActiveRecord::Base
  attr_accessible :bank, :bank_broker, :bank_broker_mobile, :bank_suggest, :bussiness_period, :clients_detail,
                  :company_address, :company_name, :cost_1, :cost_2, :cost_3, :credit_deadline, :cust_id, 
                  :cust_name, :cust_suggest, :evaluate_fee, :evaluate_price, :financail_charge_man_changed,
                  :financial_charge_man, :financial_manager, :financial_mobile, :financial_phone, :first_charge_man,
                  :first_charge_man_changed, :first_year_charge, :first_year_charge_rate, :gross_profit_1,
                  :gross_profit_2, :gross_profit_3, :guaranty_address, :guaranty_detail, :home_address, :insurance, 
                  :interest_rate, :loan_amont, :loan_bank_cash_stream, :loan_cust_name, :loan_type, :mobile, 
                  :notarial_fee, :other_bank_cash_stream, :period_gap, :pure_profit_1, :pure_profit_2, 
                  :pure_profit_3, :registration_fee, :sales_team_number, :second_charge_man, 
                  :second_charge_man_changed, :second_year_charge, :second_year_charge_rate, :turnover_1, 
                  :turnover_2, :turnover_3, :withdrawal_date, :current_step, :user_id,
                  :loanreportcustomers_attributes, :estate_1, :estate_2, :automobile, :assets,
                  :loanreportbanks_attributes
                  
  belongs_to :cust
  belongs_to :user
  
  has_many   :loanreportcustomers
  has_many   :loanreportbanks
  
  accepts_nested_attributes_for :loanreportcustomers
  accepts_nested_attributes_for :loanreportbanks
       
end
# == Schema Information
#
# Table name: loanreports
#
#  id                           :integer         not null, primary key
#  cust_id                      :integer
#  cust_name                    :string(255)
#  loan_cust_name               :string(255)
#  company_name                 :string(255)
#  mobile                       :string(255)
#  company_address              :string(255)
#  home_address                 :string(255)
#  financial_manager            :string(255)
#  financial_phone              :string(255)
#  financial_mobile             :string(255)
#  loan_amont                   :float
#  loan_type                    :integer
#  withdrawal_date              :date
#  credit_deadline              :string(255)
#  guaranty_detail              :string(255)
#  interest_rate                :float
#  guaranty_address             :string(255)
#  bank                         :integer
#  evaluate_price               :string(255)
#  bank_broker                  :string(255)
#  bank_broker_mobile           :string(255)
#  first_year_charge_rate       :float
#  first_year_charge            :float
#  second_year_charge_rate      :float
#  second_year_charge           :float
#  evaluate_fee                 :float
#  notarial_fee                 :float
#  insurance                    :float
#  registration_fee             :float
#  first_charge_man             :string(255)
#  first_charge_man_changed     :boolean
#  second_charge_man            :string(255)
#  second_charge_man_changed    :boolean
#  financial_charge_man         :string(255)
#  financail_charge_man_changed :boolean
#  sales_team_number            :string(255)
#  clients_detail               :string(255)
#  loan_bank_cash_stream        :string(255)
#  other_bank_cash_stream       :string(255)
#  turnover_1                   :string(255)
#  turnover_2                   :string(255)
#  turnover_3                   :string(255)
#  gross_profit_1               :string(255)
#  gross_profit_2               :string(255)
#  gross_profit_3               :string(255)
#  cost_1                       :string(255)
#  cost_2                       :string(255)
#  cost_3                       :string(255)
#  pure_profit_1                :string(255)
#  pure_profit_2                :string(255)
#  pure_profit_3                :string(255)
#  bussiness_period             :string(255)
#  period_gap                   :string(255)
#  bank_suggest                 :string(255)
#  cust_suggest                 :string(255)
#  created_at                   :datetime        not null
#  updated_at                   :datetime        not null
#  current_step                 :integer
#  user_id                      :integer
#  estate_1                     :string(255)
#  estate_2                     :string(255)
#  automobile                   :string(255)
#  assets                       :string(255)
#

