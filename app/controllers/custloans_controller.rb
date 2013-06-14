class CustloansController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
  
  def index
    @custloan  = Custloan.find(params[:id])
    @title = "信贷记录"
  end  
  
  def show
    @custloan  = Custloan.find(params[:id])
    @title = "信贷记录"
  end
  
  def new
    @custloan = Custloan.new
    @custloan.loanstepones.build
    @cust = Cust.find(params[:cust_id])
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
    if @custloan.update_attributes(params[:cust])
      redirect_to @custloan, :flash => { :success => "信贷流程更新成功" }
    else  
      @title = "新建信贷流程"
      render 'edit'
    end 
  end
    
  def destroy
    @custloan.destroy
    redirect_to custloans_path, :flash => { :success => "信贷流程已撤销" }
  end
end
