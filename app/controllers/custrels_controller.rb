class CustrelsController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update, :destroy]

  # def new
  #   @cust  = Cust.find(params[:id])
  #   @title = "客户关系设置"
  #   @users = User.all
  # end
  
  def edit
    @cust  = Cust.find(params[:id])
    @title = "客户分配"
    @users = User.all
  end
  
  # def update
  #   @user  = User.find(params[:id])
  #   if @user.update_attributes(params[:user])
  #     redirect_to @user, :flash => { :success => "用户资料更新成功" }
  #   else  
  #     @title = "用户设置"
  #     render 'edit'
  #   end 
  # end
end
