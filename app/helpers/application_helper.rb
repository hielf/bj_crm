# encoding: utf-8
module ApplicationHelper
  
  #return title
  def title 
    base_title = "博嘉金融综合管理系统"
    if @title.nil?
      base_title
    else 
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("title_bojia.png", :alt => "博通银企 嘉言善行" )
  end
  
end
