# encoding: utf-8
class LoanReportStepsController < ApplicationController
  include Wicked::Wizard
  steps :two, :three, :four
  
  def show
    @title = "贷后调查报告"
    @loanreport = Loanreport.find(params[:loanreport_id])
    @cust = Cust.find_by_id(@loanreport.cust_id)
    
    case step
    when :two
      @title = "贷后调查报告"
    when :three
      @title = "贷后调查报告"
    when :four
      @title = "贷后调查报告"
    end
    render_wizard
  end
  
  def update
    @loanreport = Loanreport.find(params[:loanreport_id])
    @loanreport.update_attributes(params[:loanreport])
    
    render_wizard @loanreport, :flash => { :success => "流程更新成功" }
  end
end


 