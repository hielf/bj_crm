class LoanStepsController < ApplicationController
  include Wicked::Wizard
  steps :one, :two, :two_two, :three, :four, :five, :six, :six_two, :seven, :seven_two, :seven_three, :seven_four,
        :eight, :eight_two, :nine, :ten
    
  def show
    @title = "贷前流程"
    @custloan = Custloan.find(params[:custloan_id])
    @cust = Cust.find_by_id(@custloan.cust_id)
    case step
    when :two
      @title = "2 收集资料"
      @custloan.loansteptwos.build unless !@custloan.loansteptwos.blank?
      # @custloan.loansteptwoguarantors.build unless !@custloan.loansteptwoguarantors.blank?
    when :two_two
      @title = "2 收集资料"
      if @custloan.guarantee_type == get_dict("guaranteeType", 3).id
        @custloan.loansteptwoguarantors.build unless !@custloan.loansteptwoguarantors.blank?
      end
    when :three
      @title = "3 尽职调查"
      @custloan.loanstepthrees.build unless !@custloan.loanstepthrees.blank?
    when :four
      @title = "4 贷前调查报告"
      @custloan.loanstepfours.build unless !@custloan.loanstepfours.blank?
    when :five
      @title = "5 银行审批"
      @custloan.loanstepfifths.build unless !@custloan.loanstepfifths.blank?
    when :six
      @title = "6 合同"
      @custloan.loanstepsixths.build unless !@custloan.loanstepsixths.blank?
    when :seven
      @title = "7 开户"
      @custloan.loanstepsevens.build unless !@custloan.loanstepsevens.blank?
    when :seven_three
      @custloan.loanstepsevenadditionals.build unless !@custloan.loanstepsevenadditionals.blank?
    when :eight
      @title = "8 做抵押担保"
      @custloan.loanstepeights.build unless !@custloan.loanstepeights.blank?
      if @custloan.guarantee_type == get_dict("guaranteeType", 3).id
        @custloan.loanstepeightguarantors.build unless !@custloan.loanstepeightguarantors.blank?
      end
    when :nine
      @title = "9 放款"
      @custloan.loanstepnines.build unless !@custloan.loanstepnines.blank?
    when :ten
      @title = "10 交接"
      @custloan.loansteptens.build unless !@custloan.loansteptens.blank?
    end
    
    render_wizard
  end
  
  def update
    @custloan = Custloan.find(params[:custloan_id])
    @custloan.update_attributes(params[:custloan])
    if step == :five && !@custloan.loanstepfifths.first.pass? 
      redirect_to wizard_path(:two), :flash => { :notice => "流程回退" }
    elsif step == :eight && @custloan.guarantee_type != get_dict("guaranteeType", 1).id
      redirect_to wizard_path(:nine)
    elsif step == :ten 
      @custloan.update_attribute :serv_user_id, @custloan.loansteptens.first.user_id
      @notice = Notice.new( { :user_id => current_user.id, 
                              :assist_user_id => @custloan.loansteptens.first.user_id,
                              :custloan_id => @custloan.id,
                              :cust_id => @custloan.cust_id,
                              :vaild_date => Time.now,
                              :status => get_dict('noteStatus', 1).id,
                              :note_type => get_dict('noteType', 1).id,
                              :note => '客户关系移交' } )
      if @notice.save
        redirect_to @custloan, :flash => { :success => "客户交接已提交" }
      else
        redirect_to wizard_path(:ten)
      end
    else
      render_wizard @custloan, :flash => { :success => "贷款流程更新成功" }
    end
  end
  
  def add_new
    @custloan = Custloan.find(params[:custloan_id])
    case step
    when :two_two
      @custloan.loansteptwoguarantors.build  
    when :eight
      @custloan.loanstepeightguarantors.build
      # @custloan.save
      # redirect_to custloan_loan_step_path(@custloan, 'eight')
    when :nine
      @custloan.loanstepnineadditionals.build
      # current_step = "nine"
    end
    @custloan.save
    redirect_to custloan_loan_step_path(@custloan, step)
  end
end
