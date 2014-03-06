module UsersHelper
  def gravatar_for(user, options = { :size => 50 })
    gravatar_image_tag(user.email.address.downcase, :alt => user.name,
                                                    :class => "gravatar",
                                                    :gravatar => options  )
  end
  
  def user_type(user)
    get_dict("userType", user.usertype).code
  end
  
  def owncusts(user)
    @c = []
    user.underlings.map{ |u| u.custs.map { |c| @c.push(Cust.find(c.id)) } unless u.custs.empty?}.compact
    @custs = @c.uniq{|x| x.id}
  end

  def ownloans(user)
    @c = []
    user.underlings.map{ |u| u.custs.map { |c| @c.push(Custloan.find(c.id)) } unless u.custs.empty?}.compact
    @custloans = @c.uniq{|x| x.id}
  end
end
