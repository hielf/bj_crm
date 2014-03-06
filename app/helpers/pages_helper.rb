# encoding: utf-8
module PagesHelper
  def user_notices(user)
    @notices = Notice.order('updated_at').limit(10).find_all_by_assist_user_id_and_status(user.id,
                                                                      get_dict('noteStatus', 1).id)
  end
  
  def user_custs(user)
    if User.manager?(user)
      @custs = Cust.order("updated_at DESC").paginate(:page => params[:page]).per_page(10)
    else
      @custs = owncusts(current_user).sort_by{ |m| m.updated_at }.reverse!
    end
  end

  def user_loans(user)
    if User.manager?(user)
      @custloans = Custloan.order("updated_at DESC").paginate(:page => params[:page]).per_page(10)
    else
      @custloans = ownloans(current_user).sort_by{ |m| m.updated_at }.reverse!
    end
  end

  def current_step(step)
    case step
    when 1
      @step = "收集资料"
    when 2
      @step = "收集资料"
    when 3
      @step = "尽职调查"
    when 4
      @step = "贷前调查报告"
    when 5
      @step = "银行审批"
    when 6
      @step = "合同"
    when 7
      @step = "开户"
    when 8
      @step = "做抵押担保"
    when 9
      @step = "放款"
    when 10
      @step = "交接"
    end
  end
end
