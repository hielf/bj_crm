# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131209172100) do

  create_table "branches", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "department_id"
    t.string   "supervisor"
    t.string   "location"
    t.string   "phone"
  end

  add_index "branches", ["department_id"], :name => "index_branches_on_department_id"

  create_table "branchindices", :force => true do |t|
    t.integer  "branch_id"
    t.string   "month_id"
    t.integer  "indextype"
    t.float    "occursum"
    t.string   "remark"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "branchindices", ["branch_id", "month_id", "indextype"], :name => "index_branchindices_on_branch_id_and_month_id_and_indextype", :unique => true

  create_table "brokerindices", :force => true do |t|
    t.integer  "broker_id"
    t.string   "month_id"
    t.integer  "indextype"
    t.float    "occursum"
    t.string   "remark"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "brokerindices", ["broker_id", "month_id", "indextype"], :name => "index_brokerindices_on_broker_id_and_month_id_and_indextype", :unique => true

  create_table "brokerrels", :force => true do |t|
    t.integer  "broker_id"
    t.integer  "rel_broker_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "brokerrels", ["broker_id"], :name => "index_brokerrels_on_broker_id"

  create_table "brokers", :force => true do |t|
    t.string   "broker_code"
    t.string   "broker_name"
    t.integer  "branch_id"
    t.string   "broker_type"
    t.string   "gender"
    t.integer  "age"
    t.string   "broker_level"
    t.string   "broker_status"
    t.string   "jobstatus"
    t.string   "employee_code"
    t.string   "open_date"
    t.string   "close_date"
    t.string   "certificate_type"
    t.string   "certificate_num"
    t.string   "certificate_addr"
    t.string   "mobile"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "birthday"
    t.string   "bank_account"
    t.string   "graduate_college"
    t.string   "graduate_date"
    t.string   "major"
    t.string   "earliest_date"
    t.string   "agreement_begin_date"
    t.string   "agreement_end_date"
    t.string   "compact_no"
    t.string   "broker_qualify_no"
    t.string   "cert_first_date"
    t.string   "cert_valite_date"
    t.string   "cert_get_date"
    t.string   "exam_pass_date"
    t.float    "risk_balance"
    t.string   "broker_degree"
    t.string   "post"
    t.string   "job_qualify"
    t.string   "passed_exam"
    t.string   "broker_qualify"
    t.string   "zqbz"
    t.string   "personnel_manning"
    t.string   "region_manager"
    t.string   "team_name"
    t.text     "remark"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "avatar"
  end

  add_index "brokers", ["branch_id"], :name => "index_brokers_on_branch_id"
  add_index "brokers", ["broker_code"], :name => "index_brokers_on_broker_code", :unique => true
  add_index "brokers", ["broker_name"], :name => "index_brokers_on_broker_name"

  create_table "custloans", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "status"
    t.integer  "user_id"
    t.float    "total_amount"
    t.integer  "guarantee_type"
    t.datetime "begin_date"
    t.datetime "end_date"
    t.string   "pawn"
    t.integer  "bank"
    t.string   "bank_contact"
    t.string   "mobile"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "current_step"
    t.string   "memo"
    t.integer  "serv_user_id"
  end

  create_table "custrels", :force => true do |t|
    t.integer  "user_id"
    t.integer  "cust_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "custs", :force => true do |t|
    t.string   "fullname"
    t.string   "phone"
    t.string   "company"
    t.string   "workaddress"
    t.string   "custtype"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.date     "birthday"
    t.date     "partner_birthday"
  end

  create_table "departments", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "supervisor"
    t.string   "location"
    t.string   "phone"
  end

  create_table "deptindices", :force => true do |t|
    t.integer  "department_id"
    t.string   "month_id"
    t.integer  "indextype"
    t.float    "occursum"
    t.string   "remark"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "deptindices", ["department_id", "month_id", "indextype"], :name => "index_deptindices_on_department_id_and_month_id_and_indextype", :unique => true

  create_table "dicts", :force => true do |t|
    t.string   "name"
    t.string   "dict_type"
    t.integer  "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "dicts", ["dict_type", "code"], :name => "index_dicts_on_dict_type_and_code", :unique => true

  create_table "flowpositionrels", :force => true do |t|
    t.integer  "step"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "flowid"
  end

  create_table "loanpaymentplandetails", :force => true do |t|
    t.integer  "time_number"
    t.date     "payment_date"
    t.float    "capital"
    t.float    "interest"
    t.float    "sub_total"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "custloan_id"
    t.integer  "cust_id"
  end

  create_table "loanpaymentplans", :force => true do |t|
    t.string   "contract_num"
    t.string   "loan_num"
    t.integer  "cur"
    t.float    "loan_amount"
    t.integer  "loan_deadline"
    t.datetime "loan_begindate"
    t.datetime "loan_enddate"
    t.integer  "payment_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "custloan_id"
    t.integer  "cust_id"
  end

  create_table "loanreports", :force => true do |t|
    t.integer  "cust_id"
    t.string   "cust_name"
    t.string   "loan_cust_name"
    t.string   "company_name"
    t.string   "mobile"
    t.string   "company_address"
    t.string   "home_address"
    t.string   "financial_manager"
    t.string   "financial_phone"
    t.string   "financial_mobile"
    t.float    "loan_amont"
    t.integer  "loan_type"
    t.date     "withdrawal_date"
    t.string   "credit_deadline"
    t.string   "guaranty_detail"
    t.float    "interest_rate"
    t.string   "guaranty_address"
    t.integer  "bank"
    t.string   "evaluate_price"
    t.string   "bank_broker"
    t.string   "bank_broker_mobile"
    t.float    "first_year_charge_rate"
    t.float    "first_year_charge"
    t.float    "second_year_charge_rate"
    t.float    "second_year_charge"
    t.float    "evaluate_fee"
    t.float    "notarial_fee"
    t.float    "insurance"
    t.float    "registration_fee"
    t.string   "first_charge_man"
    t.boolean  "first_charge_man_changed"
    t.string   "second_charge_man"
    t.boolean  "second_charge_man_changed"
    t.string   "financial_charge_man"
    t.boolean  "financail_charge_man_changed"
    t.string   "sales_team_number"
    t.string   "clients_detail"
    t.string   "loan_bank_cash_stream"
    t.string   "other_bank_cash_stream"
    t.string   "turnover_1"
    t.string   "turnover_2"
    t.string   "turnover_3"
    t.string   "gross_profit_1"
    t.string   "gross_profit_2"
    t.string   "gross_profit_3"
    t.string   "cost_1"
    t.string   "cost_2"
    t.string   "cost_3"
    t.string   "pure_profit_1"
    t.string   "pure_profit_2"
    t.string   "pure_profit_3"
    t.string   "bussiness_period"
    t.string   "period_gap"
    t.string   "bank_suggest"
    t.string   "cust_suggest"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "current_step"
    t.integer  "user_id"
  end

  add_index "loanreports", ["cust_id"], :name => "index_loanreports_on_cust_id"

  create_table "loanstepeightguarantors", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "custloan_id"
    t.string   "guarantor_name"
    t.datetime "sign_date"
    t.string   "attachment_file1"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "loanstepeights", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "custloan_id"
    t.boolean  "has_guaranty"
    t.boolean  "has_license_code"
    t.datetime "guaranty_date"
    t.datetime "other_complete_date"
    t.datetime "repayment_date"
    t.datetime "available_repayment_date"
    t.datetime "revoke_date"
    t.datetime "revoke_complete_date"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.boolean  "if_credit"
    t.string   "memo"
  end

  add_index "loanstepeights", ["custloan_id"], :name => "index_loanstepeights_on_custloan_id", :unique => true

  create_table "loanstepfifths", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "custloan_id"
    t.boolean  "pass"
    t.boolean  "requirement"
    t.string   "requirement_detail"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "attachment_file1"
    t.string   "memo"
    t.float    "submit_amont"
  end

  add_index "loanstepfifths", ["custloan_id"], :name => "index_loanstepfifths_on_custloan_id", :unique => true

  create_table "loanstepfives", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "custloan_id"
    t.boolean  "pass"
    t.boolean  "requirement"
    t.string   "requirement_detail"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "loanstepfourassets", :force => true do |t|
    t.integer  "custloan_id"
    t.integer  "cust_id"
    t.integer  "asset_type"
    t.string   "describe"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "loanstepfourassets", ["custloan_id"], :name => "index_loanstepfourassets_on_custloan_id"

  create_table "loanstepfourguarantees", :force => true do |t|
    t.integer  "custloan_id"
    t.integer  "cust_id"
    t.string   "address"
    t.string   "area"
    t.string   "owner"
    t.integer  "estate_type"
    t.string   "complete_year"
    t.string   "floor"
    t.string   "describe"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "loanstepfourguarantees", ["custloan_id"], :name => "index_loanstepfourguarantees_on_custloan_id"

  create_table "loanstepfours", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "custloan_id"
    t.string   "companyname"
    t.string   "companyaddress"
    t.string   "custname"
    t.string   "phone"
    t.float    "request_amont"
    t.integer  "guarantee_type"
    t.float    "request_interest"
    t.string   "special_request"
    t.string   "current_loan_status"
    t.string   "estate_address"
    t.string   "estate_area"
    t.string   "estate_owner"
    t.string   "stream_status"
    t.string   "cust_request_type"
    t.integer  "custtype"
    t.integer  "invoice_status"
    t.integer  "tex_status"
    t.datetime "request_date"
    t.string   "stream_status_company"
    t.string   "stream_status_other"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "memo"
  end

  create_table "loanstepnineadditionals", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "custloan_id"
    t.datetime "loan_date"
    t.string   "attachment_file1"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.float    "loan_amount"
  end

  create_table "loanstepnines", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "custloan_id"
    t.datetime "loan_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.float    "loan_amount"
    t.string   "attachment_file1"
    t.string   "memo"
  end

  add_index "loanstepnines", ["custloan_id"], :name => "index_loanstepnines_on_custloan_id", :unique => true

  create_table "loansteponeassets", :force => true do |t|
    t.integer  "custloan_id"
    t.integer  "cust_id"
    t.integer  "asset_type"
    t.string   "describe"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "loansteponeassets", ["custloan_id"], :name => "index_loansteponeassets_on_custloan_id"

  create_table "loansteponeguarantees", :force => true do |t|
    t.integer  "custloan_id"
    t.integer  "cust_id"
    t.string   "address"
    t.string   "area"
    t.string   "owner"
    t.integer  "estate_type"
    t.string   "complete_year"
    t.string   "floor"
    t.string   "describe"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "loansteponeguarantees", ["custloan_id"], :name => "index_loansteponeguarantees_on_custloan_id"

  create_table "loanstepones", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "custloan_id"
    t.string   "companyname"
    t.string   "companyaddress"
    t.string   "custname"
    t.string   "phone"
    t.float    "request_amont"
    t.integer  "guarantee_type"
    t.float    "request_interest"
    t.string   "special_request"
    t.string   "current_loan_status"
    t.string   "estate_address"
    t.string   "estate_area"
    t.string   "estate_owner"
    t.string   "stream_status"
    t.string   "cust_request_type"
    t.integer  "custtype"
    t.string   "invoice_status"
    t.string   "tex_status"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.datetime "request_date"
    t.string   "stream_status_company"
    t.string   "stream_status_other"
    t.string   "memo"
  end

  create_table "loanstepsevenadditionals", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "custloan_id"
    t.integer  "bank_account_type"
    t.string   "account_name"
    t.integer  "bank"
    t.string   "account_code"
    t.datetime "open_date"
    t.string   "attachment_file1"
    t.string   "attachment_file2"
    t.string   "attachment_file3"
    t.string   "attachment_file4"
    t.string   "attachment_file5"
    t.string   "attachment_file6"
    t.string   "attachment_file7"
    t.string   "attachment_file8"
    t.string   "attachment_file9"
    t.string   "attachment_file10"
    t.string   "attachment_file11"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "loanstepsevens", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "custloan_id"
    t.integer  "bank_account_type"
    t.string   "account_name"
    t.integer  "bank"
    t.string   "account_code"
    t.datetime "open_date"
    t.string   "attachment_file1"
    t.string   "attachment_file2"
    t.string   "attachment_file3"
    t.string   "attachment_file4"
    t.string   "attachment_file5"
    t.string   "attachment_file6"
    t.string   "attachment_file7"
    t.string   "attachment_file8"
    t.string   "attachment_file9"
    t.string   "attachment_file10"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "attachment_file11"
    t.string   "memo"
  end

  add_index "loanstepsevens", ["custloan_id"], :name => "index_loanstepsevens_on_custloan_id", :unique => true

  create_table "loanstepsixths", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "custloan_id"
    t.boolean  "couples_is_appear"
    t.boolean  "owner_is_appear"
    t.datetime "contract_date"
    t.string   "sign_location"
    t.string   "bank_broker"
    t.integer  "user_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.boolean  "has_stuff"
    t.datetime "notarization_date"
    t.string   "notarization_place"
    t.string   "notarization_man"
    t.string   "custs"
    t.integer  "contract_type"
    t.string   "notarization_bank_broker"
    t.integer  "notarization_user_id"
    t.string   "notarization_custs"
    t.boolean  "has_notarization_stuff"
    t.boolean  "if_notarization"
    t.string   "memo"
  end

  add_index "loanstepsixths", ["custloan_id"], :name => "index_loanstepsixths_on_custloan_id", :unique => true

  create_table "loansteptens", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "custloan_id"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "loansteptens", ["custloan_id"], :name => "index_loansteptens_on_custloan_id", :unique => true

  create_table "loanstepthrees", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "custloan_id"
    t.datetime "visit_time"
    t.string   "visit_place"
    t.integer  "company_id"
    t.string   "bank_emp"
    t.datetime "end_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "subject"
    t.integer  "broker_id"
    t.string   "memo"
  end

  add_index "loanstepthrees", ["custloan_id"], :name => "index_loanstepthrees_on_custloan_id", :unique => true

  create_table "loansteptwoguarantors", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "custloan_id"
    t.integer  "bank"
    t.string   "attachment_file1"
    t.string   "attachment_file2"
    t.string   "attachment_file3"
    t.string   "attachment_file4"
    t.string   "attachment_file5"
    t.string   "attachment_file6"
    t.string   "attachment_file7"
    t.string   "attachment_file8"
    t.string   "attachment_file9"
    t.string   "attachment_file10"
    t.string   "attachment_file11"
    t.string   "attachment_file12"
    t.string   "attachment_file13"
    t.string   "attachment_file14"
    t.string   "attachment_file15"
    t.string   "attachment_file16"
    t.string   "attachment_file17"
    t.string   "attachment_file18"
    t.string   "attachment_file19"
    t.string   "attachment_file20"
    t.string   "attachment_file21"
    t.string   "attachment_file22"
    t.string   "attachment_file23"
    t.string   "attachment_file24"
    t.string   "attachment_file25"
    t.string   "attachment_file26"
    t.string   "attachment_file27"
    t.string   "attachment_file28"
    t.string   "attachment_file29"
    t.string   "attachment_file30"
    t.string   "attachment_file31"
    t.string   "attachment_file32"
    t.string   "attachment_file33"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "loansteptwos", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "custloan_id"
    t.string   "attachment_file1"
    t.string   "attachment_file2"
    t.string   "attachment_file3"
    t.string   "attachment_file4"
    t.string   "attachment_file5"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "attachment_file6"
    t.string   "attachment_file7"
    t.string   "attachment_file8"
    t.string   "attachment_file9"
    t.string   "attachment_file10"
    t.string   "attachment_file11"
    t.string   "attachment_file12"
    t.string   "attachment_file13"
    t.string   "attachment_file14"
    t.string   "attachment_file15"
    t.string   "attachment_file16"
    t.string   "attachment_file17"
    t.string   "attachment_file18"
    t.string   "attachment_file19"
    t.string   "attachment_file20"
    t.string   "attachment_file21"
    t.string   "attachment_file22"
    t.string   "attachment_file23"
    t.string   "attachment_file24"
    t.string   "attachment_file25"
    t.string   "attachment_file26"
    t.string   "attachment_file27"
    t.string   "attachment_file28"
    t.string   "attachment_file29"
    t.string   "attachment_file30"
    t.string   "attachment_file31"
    t.string   "attachment_file32"
    t.string   "attachment_file33"
    t.integer  "bank"
    t.string   "memo"
  end

  add_index "loansteptwos", ["custloan_id"], :name => "index_loansteptwos_on_custloan_id", :unique => true

  create_table "notices", :force => true do |t|
    t.integer  "user_id"
    t.integer  "cust_id"
    t.integer  "assist_user_id"
    t.integer  "status"
    t.datetime "vaild_date"
    t.string   "note"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "custloan_id"
    t.integer  "note_type"
  end

  add_index "notices", ["cust_id"], :name => "index_notices_on_cust_id"
  add_index "notices", ["user_id"], :name => "index_notices_on_user_id"

  create_table "userpositionrels", :force => true do |t|
    t.integer  "userid"
    t.integer  "positionid"
    t.date     "expiredate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "userpositions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              :default => false
    t.string   "usercode"
    t.boolean  "ismgr"
    t.integer  "usertype"
    t.integer  "status"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "usrrels", :force => true do |t|
    t.integer  "mgr"
    t.integer  "usr"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "workflowexes", :force => true do |t|
    t.integer  "flowid"
    t.integer  "step"
    t.string   "content"
    t.string   "remark"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "workflowhis", :force => true do |t|
    t.integer  "flowid"
    t.string   "content"
    t.string   "remark"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "workflows", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "steps"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
