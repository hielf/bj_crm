class NoticesController < ApplicationController
  before_filter :authenticate, :only => [:index, :show, :edit, :update, :destroy]
  
  def index
    @notices = Notice.find_by_assist_user_id(current_user.id).order("updated_at").paginate(
                :page => params[:page]).per_page(10)
    @title = "通知"
    
    respond_to do |format|
      format.html
      format.json { render json: @notices }
    end
  end
  
  def show
    @notice = Notice.find(params[:id])
    @title = "通知"
  end
  
end
