module PagesHelper
  def user_notices(user)
    @notices = Notice.order('updated_at').limit(10).find_all_by_assist_user_id(user.id)
  end
end
