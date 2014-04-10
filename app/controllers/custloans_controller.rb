# encoding: utf-8
class CustloansController < ApplicationController
  # include Wicked::Wizard
  # steps :one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :ten
  
  before_filter :authenticate, :only => [:index, :show, :edit, :update, :destroy]
  
  def index
    if User.manager?(current_user)
      @custloans = Custloan.status12.order("updated_at DESC").paginate(:page => params[:page]).per_page(20)
    else
      @custloans = ownloans(current_user).sort_by{ |m| m.updated_at }.reverse!
    end
    @title = "信贷记录"
  end  
  
  def show
    @custloan = Custloan.find(params[:id])
    @custloan.loansteptwos.build
    @cust = Cust.find(@custloan.cust_id)
    @title = "信贷记录"
    current_step = @custloan.current_step
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
      @next_step = 'five'
      @prev_step = 'three'
    when 5
      @next_step = 'six'
      @prev_step = 'five'
    when 6
      @next_step = 'seven'
      @prev_step = 'six'
    when 7
      @next_step = 'eight'
      @prev_step = 'seven'
    when 8
      @next_step = 'nine'
      @prev_step = 'eight'
    when 9
      @next_step = 'ten'
      @prev_step = 'nine'
    when 10
      @next_step = 'ten'
      @current_step = 'ten'
    end
  end
  
  def new
    @custloan = Custloan.new
    @custloan.loanstepones.build
    @cust = Cust.find_by_id(params[:cust_id])
    @title = "1 初步可行性"
    @banks = get_dict_by_type("custBank")
    @guaranteetype = get_dict_by_type("guaranteeType")
    @custrequesttype = get_dict_by_type("requestType")    
    @custtype = get_dict_by_type("custType")
  end
  
  def create
    if user_type(current_user) == 2
      redirect_to root_path, :flash => { :error => "您无权建立贷款流程"}
    else
      @custloan = Custloan.new(params[:custloan])
      if @custloan.save
        # redirect_to @custloan, :flash => { :success => "信贷流程建立"}
        # redirect_to loan_steps_path
        redirect_to custloan_loan_step_path(@custloan, :two)
      else  
        @title = "1 初步可行性"
        render 'new'
      end
    end
  end

  def edit
    @custloan  = Custloan.find(params[:id])
    @title = "修改信贷流程"
  end
  
  def update
    @custloan  = Custloan.find(params[:id])
    if @custloan.update_attributes(params[:custloan])
      redirect_to @custloan, :flash => { :success => "信贷流程更新成功" }
      # redirect_to loan_steps_path
    else  
      @title = "新建信贷流程"
      render 'edit'
    end 
  end

  def destroy
    @custloan.destroy
    redirect_to custloans_path, :flash => { :success => "信贷流程已撤销" }
  end
  
  def roll_back
    @custloan  = Custloan.find(params[:id])
    @notice = Notice.find_by_custloan_id(params[:id])
    @custloan.update_attribute :status, get_dict("loanStatus", 1).id
    @notice.destroy
    redirect_to root_path
  end
  
  def loan_add
    @custloan  = Custloan.find(params[:id])
    # @custloan.update_attribute :status, get_dict("loanStatus", 1).id
    # @notice.destroy
    # redirect_to root_path
  end
  
  def paymentplan
    @title = "还款计划表"
    @custloan  = Custloan.find(params[:id])
    @cust = @custloan.cust
    @custloan.loanpaymentplans.build unless !@custloan.loanpaymentplans.blank?
  end
  
  private

    def nextstep
      @custloan = Cusnloan.find(params[:id])
    end
    
end
