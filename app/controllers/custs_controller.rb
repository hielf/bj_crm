# encoding: utf-8
require 'will_paginate/array'

class CustsController < ApplicationController
  before_filter :authenticate, :only => [:index, :show, :edit, :update, :destroy]
  
  def index
    if User.manager?(current_user)
      @custs = Cust.order("updated_at DESC").paginate(:page => params[:page]).per_page(20)
    else
      @custs = owncusts(current_user).sort_by{ |m| m.updated_at }.reverse!.paginate(:page => params[:page])
    end
    @title = "客户"
  end
  
  def show
    @cust  = Cust.find(params[:id])
    @title = @cust.fullname
    if user_type(current_user) == 2
      @custloans = @cust.custloans.status3
    else
      @custloans = @cust.custloans
    end
    
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
