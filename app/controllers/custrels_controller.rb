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
    current_user.custrel!(@cust) unless !current_user.custrels.include?(@cust)
    @notice.update_attributes( { :status => get_dict('noteStatus', 3).id  } )
    respond_to do |format|
      format.html { redirect_to @cust }
      format.js
    end
  end
  
end
