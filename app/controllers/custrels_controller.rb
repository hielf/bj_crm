# encoding: utf-8
class CustrelsController < ApplicationController
  before_filter :authenticate#, :only => [:index, :edit, :update, :destroy]

  def new
    @custrel  = Custrel.new
  end
  
  def edit
    @cust  = Cust.find(params[:id])
    @title = "客户分配"
    @users = User.all
  end
  
  def create
    @cust = Cust.find(params[:custrel][:cust_id])
    @notice = Notice.find_by_cust_id(@cust.id)
    @custloan = Custloan.find_by_id(@notice.custloan_id)
    if current_user.custrels.find_by_cust_id(@cust).nil?
      current_user.custrel!(@cust)
    end 
    @custloan.update_attributes( { :status => get_dict('loanStatus', 3).id  } )
    @notice.update_attributes( { :status => get_dict('noteStatus', 3).id  } )
    respond_to do |format|
      format.html { redirect_to @cust }
      format.js
    end
  end
  
end
