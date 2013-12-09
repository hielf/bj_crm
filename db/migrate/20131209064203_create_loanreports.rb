class CreateLoanreports < ActiveRecord::Migration
  def change
    create_table :loanreports do |t|
      t.integer :cust_id
      t.string :cust_name
      t.string :loan_cust_name
      t.string :company_name
      t.string :mobile
      t.string :company_address
      t.string :home_address
      t.string :financial_manager
      t.string :financial_phone
      t.string :financial_mobile
      t.float :loan_amont
      t.integer :loan_type
      t.date :withdrawal_date
      t.string :credit_deadline
      t.string :guaranty_detail
      t.float :interest_rate
      t.string :guaranty_address
      t.integer :bank
      t.string :evaluate_price
      t.string :bank_broker
      t.string :bank_broker_mobile
      t.float :first_year_charge_rate
      t.float :first_year_charge
      t.float :second_year_charge_rate
      t.float :second_year_charge
      t.float :evaluate_fee
      t.float :notarial_fee
      t.float :insurance
      t.float :registration_fee
      t.string :first_charge_man
      t.boolean :first_charge_man_changed
      t.string :second_charge_man
      t.boolean :second_charge_man_changed
      t.string :financial_charge_man
      t.boolean :financail_charge_man_changed
      t.string :sales_team_number
      t.string :clients_detail
      t.string :loan_bank_cash_stream
      t.string :other_bank_cash_stream
      t.string :turnover_1
      t.string :turnover_2
      t.string :turnover_3
      t.string :gross_profit_1
      t.string :gross_profit_2
      t.string :gross_profit_3
      t.string :cost_1
      t.string :cost_2
      t.string :cost_3
      t.string :pure_profit_1
      t.string :pure_profit_2
      t.string :pure_profit_3
      t.string :bussiness_period
      t.string :period_gap
      t.string :bank_suggest
      t.string :cust_suggest

      t.timestamps
    end
    add_index(:loanreports, :cust_id)
  end
end
