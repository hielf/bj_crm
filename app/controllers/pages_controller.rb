# encoding: utf-8
class PagesController < ApplicationController
  def home
    @title = "首页"
    if signed_in?
      @title = "首页"
      @notices = Notice.find_by_assist_user_id(current_user.id)
    end
  end

  def contact
    @title = "联系"
  end
  
  def about
    @title = "关于"
  end
  
  def help
    @title = "帮助"
  end
  
  def todo
    @title = "代办事项"
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
