# encoding: utf-8
class CustsController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
  
  def index
    # @custs = Cust.order("fullname").paginate(:page => params[:page]).per_page(20)
    if User.manager?(current_user)
      @custs = Cust.order("fullname").paginate(:page => params[:page]).per_page(20)
    else
      @custs = User.owncusts(current_user).order("fullname").paginate(:page =>
                                                                       params[:page]).per_page(20)
    end
    @title = "客户"
  end
  
  def show
    @cust  = Cust.find(params[:id])
    @title = @cust.fullname
  end
  
  def new
    @cust  = Cust.new
    @title = "客户登记"
    @custtype = get_dict_by_type("custType")
  end
  
  def create
    @cust = Cust.new(params[:cust])
    if @cust.save
      redirect_to @cust, :flash => { :success => "客户建立成功"}
    else  
      @title = "客户登记"
      render 'new'
    end
  end

  def edit
    @cust  = Cust.find(params[:id])
    @title = "客户资料"
  end
  
  def update
    @cust  = Cust.find(params[:id])
    if @cust.update_attributes(params[:cust])
      redirect_to @cust, :flash => { :success => "客户资料更新成功" }
    else  
      @title = "客户资料"
      render 'edit'
    end 
  end
    
  def destroy
    @cust.destroy
    redirect_to custs_path, :flash => { :success => "客户已删除" }
  end
end
