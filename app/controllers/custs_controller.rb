# encoding: utf-8
class CustsController < ApplicationController
  before_filter :authenticate, :only => [:index, :show, :edit, :update, :destroy]
  
  def index
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
    @custloans = @cust.custloans
  end
  
  def new
    @cust  = Cust.new
    @title = "客户登记"
    @custtype = get_dict_by_type("custType")
  end
  
  def create
    if user_type(current_user) == 2
      redirect_to root_path, :flash => { :error => "您无权登记新客户"}
    else
      @cust = Cust.new(params[:cust])
      if @cust.save
        current_user.custrel!(@cust)
        redirect_to @cust, :flash => { :success => "客户建立成功"}
      else  
        @title = "客户登记"
        render 'new'
      end
    end
  end

  def edit
    @cust  = Cust.find(params[:id])
    @custtype = get_dict_by_type("custType")
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
