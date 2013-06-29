class CustloansController < ApplicationController
  # include Wicked::Wizard
  # steps :one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :ten
  
  before_filter :authenticate, :only => [:index, :show, :edit, :update, :destroy]
  
  def index
    @custloan  = Custloan.find(params[:id])
    @title = "信贷记录"
  end  
  
  def show
    @custloan = Custloan.find(params[:id])
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
    @title = "新建信贷流程"
    @banks = get_dict_by_type("custBank")
    @guaranteetype = get_dict_by_type("guaranteeType")
    @custrequesttype = get_dict_by_type("requestType")    
    @custtype = get_dict_by_type("custType")
  end
  
  def create
    @custloan = Custloan.new(params[:custloan])
    if @custloan.save
      redirect_to @custloan, :flash => { :success => "信贷流程建立"}
      # redirect_to loan_steps_path
    else  
      @title = "新建信贷流程"
      render 'new'
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

  private

    def nextstep
      @custloan = Cusnloan.find(params[:id])
    end
    
end
