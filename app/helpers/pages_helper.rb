module PagesHelper
  def user_notices(user)
    @notices = Notice.order('updated_at').limit(5).find_all_by_assist_user_id_and_status(user.id,
                                                                      get_dict('noteStatus', 1).id)
  end
  
  def user_custs(user)
    if User.manager?(user)
      @custs = Cust.order("updated_at DESC").paginate(:page => params[:page]).per_page(5)
    else
      @custs = owncusts(current_user).sort_by{ |m| m.updated_at }.reverse!.paginate(:page => params[:page])
    end
  end
end
