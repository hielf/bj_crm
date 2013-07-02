module PagesHelper
  def user_notices(user)
    @notices = Notice.order('updated_at').limit(10).find_all_by_assist_user_id_and_status(user.id,
                                                                      get_dict('noteStatus', 1).id)
  end
  
  def user_custs(user)
    if User.manager?(user)
      @custs = Cust.order("fullname").paginate(:page => params[:page]).per_page(20)
    else
      @custs = User.owncusts(current_user).order("fullname")
    end
  end
end
