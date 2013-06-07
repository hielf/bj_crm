module UsersHelper
  def gravatar_for(user, options = { :size => 50 })
    gravatar_image_tag(user.email.address.downcase, :alt => user.name,
                                                    :class => "gravatar",
                                                    :gravatar => options  )
  end
  
  def user_type(user)
    get_dict("userType", user.usertype).code
  end
end
