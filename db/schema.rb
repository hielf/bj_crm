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

ActiveRecord::Schema.define(:version => 20130620165437) do

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
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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
    t.integer  "cust_request_type"
    t.integer  "custtype"
    t.string   "invoice_status"
    t.string   "tex_status"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

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
  end

  add_index "loanstepthrees", ["custloan_id"], :name => "index_loanstepthrees_on_custloan_id", :unique => true

  create_table "loansteptwos", :force => true do |t|
    t.integer  "cust_id"
    t.integer  "custloan_id"
    t.string   "attachment_file1"
    t.string   "attachment_file2"
    t.string   "attachment_file3"
    t.string   "attachment_file4"
    t.string   "attachment_file5"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "loansteptwos", ["custloan_id"], :name => "index_loansteptwos_on_custloan_id", :unique => true

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
    t.string   "usertype"
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
