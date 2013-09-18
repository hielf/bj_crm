# encoding: utf-8
class UsrrelsController < ApplicationController
  before_filter :authenticate
  
  # def create
  #   @user  = User.find_by_id(params[:usrrel][:mgr])
  #   @usrrels = params[:usrrel][:usr]
  #   # @usrrels = Usrrel.new(params[:usrrel])
  #   @usrrels.each do |input|
  #     if input != nil
  #       @usrrel = Usrrel.new({ :mgr => @user.id, :usr => input.to_i })
  #       @usrrel.save
  #     end
  #   end
  #   redirect_to user_path(@user), :flash => { :success => "用户资料更新成功" }
  # end
  # 
  # def update
  #   @user  = User.find_by_id(params[:usrrel][:mgr])
  #   @usrrels = @user.usrrels
  #   # @usrrels.each do |input|
  #   #   input.update_attributes(params[:usrrel])
  #   # end
  #     redirect_to user_path(@user), :flash => { :success => "用户资料更新成功" }
  #   # else  
  #   #   @title = "用户设置"
  #   #   render 'edit'
  #   # end
  # end
end
