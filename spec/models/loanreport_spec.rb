require 'spec_helper'

describe Loanreport do
  pending "add some examples to (or delete) #{__FILE__}"
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

