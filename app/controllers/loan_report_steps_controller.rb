# encoding: utf-8
class LoanReportStepsController < ApplicationController
  include Wicked::Wizard
  steps :one, :two, :three, :four
  
  def show
    @title = "贷后调查报告"
    @loanreport = Loanreport.find(params[:loanreport_id])
    @cust = Cust.find_by_id(@loanreport.cust_id)
  end
end
