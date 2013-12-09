# encoding: utf-8
class LoanreportsController < ApplicationController
  before_filter :authenticate
  
  def show
    @loanreport = Loanreport.find(params[:id])
    # @loanreport.loansteptwos.build
    @cust = Cust.find(@loanreport.cust_id)
    @title = "信贷记录"
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
    @title = "1 初步可行性"
  end
  
  def create
    if user_type(current_user) == 2
      redirect_to root_path, :flash => { :error => "您无权建立贷款流程"}
    else
      @loanreport = Loanreport.new(params[:loanreport])
      if @loanreport.save
        # redirect_to @loanreport, :flash => { :success => "信贷流程建立"}
        # redirect_to loan_steps_path
        redirect_to loanreport_loan_step_path(@loanreport, :two)
      else  
        @title = "1 初步可行性"
        render 'new'
      end
    end
  end
end
