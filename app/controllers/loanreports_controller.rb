# encoding: utf-8
class LoanreportsController < ApplicationController
  before_filter :authenticate
  
  def show
    @loanreport = Loanreport.find(params[:id])
    # @loanreport.loansteptwos.build
    @cust = Cust.find(@loanreport.cust_id)
    @title = "贷后调查报告"
    current_step = @loanreport.current_step
    case current_step
    when 1
      @next_step = 'two'
    when 2
      @next_step = 'three'
      @prev_step = 'one'
    when 3
      @next_step = 'four'
      @prev_step = 'three'
    when 4
      @next_step = 'four'
      @prev_step = 'three'
      @current_step = 'four'
    end
  end
  
  def new
    @loanreport = Loanreport.new
    # @loanreport.loanstepones.build
    @cust = Cust.find_by_id(params[:cust_id])
    @title = "贷后调查报告"
  end
  
  def edit
    @loanreport = Loanreport.find(params[:id])
    @cust = Cust.find(@loanreport.cust_id)
    @title = "贷后调查报告"
  end
  
  def update
    @loanreport = Loanreport.find(params[:id])
    if @loanreport.update_attributes(params[:loanreport])
      if !params[:loanreport][:loaninterestplans_attributes].nil?
        redirect_to loan_interest_loanreport_path(@loanreport)
      else
        redirect_to loanreport_loan_report_step_path(@loanreport, :two)
      end
    else  
      @title = "贷后调查报告"
      render 'edit'
    end 
  end
  
  def create
    if user_type(current_user) == 1
      redirect_to root_path, :flash => { :error => "您无权建立贷款流程"}
    else
      @loanreport = Loanreport.new(params[:loanreport])
      if @loanreport.save
        # redirect_to @loanreport, :flash => { :success => "信贷流程建立"}
        # redirect_to loan_steps_path
        redirect_to loanreport_loan_report_step_path(@loanreport, :two)
      else  
        @title = "贷后调查报告"
        render 'new'
      end
    end
  end
  
  def loan_interest
    @title = "客户还息计划"
    @loanreport = Loanreport.find(params[:id])
    @cust = Cust.find(@loanreport.cust_id)
    @loanreport.loaninterestplans.build unless !@loanreport.loaninterestplans.blank?
  end
  
end
