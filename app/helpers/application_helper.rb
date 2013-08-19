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
    image_tag("logo_bojia.png", :alt => "博通银企 嘉言善行" )
  end

  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end
  
  def link_to_add_tabs(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render("two_two_gua_fields", f: builder)
    end
    link_to(name, '#', class: "tab-pane", data: {id: id, fields: fields.gsub("\n", "")})
  end
    
end
