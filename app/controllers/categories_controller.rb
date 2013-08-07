# encoding: utf-8
class CategoriesController < ApplicationController
  def index
      if params[:term]
        @categories = Cust.limit(10).find(:all,:conditions => 
                      ['fullname LIKE ? OR company LIKE ?', "%#{params[:term]}%", "%#{params[:term]}%"])
      else
        @categories = Cust.all
      end

      respond_to do |format|  
        format.html # index.html.erb  
        # Here is where you can specify how to handle the request for "/people.json"
        format.json { render json: @categories.to_json } # { render :json => @categories.map(&(:broker_code))}
      end
  end
  
  def search
    @title = "搜索结果"
    if !params[:categories][:category_name].nil?
      @custs = User.search(params[:categories][:category_name], current_user)
    end
  end
end
