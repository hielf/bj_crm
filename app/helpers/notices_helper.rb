module NoticesHelper
  def get_note(user)
    custs = current_user.custs.find_birthdays_for(Time.now, -7.days.ago)
    custs.each do |c|
      @notice = Notice.find_by_cust_id_and_note_type( c.id, get_dict('noteType', 3).id )
      if @notice.nil? || (c.birthday - @notice.vaild_date.to_date).to_i > 7
        Notice.create( { :user_id => user.id, 
                         :assist_user_id => user.id,
                         :cust_id => c.id,
                         :vaild_date => Time.now,
                         :status => get_dict('noteStatus', 1).id,
                         :note_type => get_dict('noteType', 3).id,
                         :note => "客户#{c.fullname}生日提醒" } )
      end
    end
    custs = current_user.custs.find_partner_birthdays_for(Time.now, -7.days.ago)
    custs.each do |c|
      @notice = Notice.find_by_cust_id_and_note_type( c.id, get_dict('noteType', 5).id )
      if @notice.nil? || (c.birthday - @notice.vaild_date.to_date).to_i > 7
        Notice.create( { :user_id => user.id, 
                         :assist_user_id => user.id,
                         :cust_id => c.id,
                         :vaild_date => Time.now,
                         :status => get_dict('noteStatus', 1).id,
                         :note_type => get_dict('noteType', 5).id,
                         :note => "客户#{c.fullname}配偶生日提醒" } )
      end
    end
    
    custs = current_user.custs
    custs.each do |c|
      Loaninterestplan.cust_plans(c).each do |p|
        if (p.plan_date - Time.now.to_date).to_i <= 7 && (p.plan_date - Time.now.to_date).to_i >= 0
          @notice = Notice.find_by_cust_id_and_note_type( c.id, get_dict('noteType', 4).id )
          if @notice.nil?
            Notice.create( { :user_id => user.id, 
                             :assist_user_id => user.id,
                             :cust_id => c.id,
                             :vaild_date => Time.now,
                             :status => get_dict('noteStatus', 1).id,
                             :note_type => get_dict('noteType', 4).id,
                             :note => "客户#{c.fullname}到期还息提醒" } )
          end         
        end
      end
    end
  end
end
