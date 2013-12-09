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
                  :turnover_2, :turnover_3, :withdrawal_date, :current_step, :user_id
                  
  belongs_to :cust
       
end
