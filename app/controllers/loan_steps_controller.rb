class LoanStepsController < ApplicationController
  include Wicked::Wizard
  steps :one, :two, :three, :four, :five, :six, :seven, :seven_two, :eight, :eight_two, :nine, :ten
    
  def show
    @title = "贷前流程"
    @custloan = Custloan.find(params[:custloan_id])
    @cust = Cust.find_by_id(@custloan.cust_id)
    case step
    when :two
      @custloan.loansteptwos.build unless !@custloan.loansteptwos.blank?
    when :three
      @custloan.loanstepthrees.build unless !@custloan.loanstepthrees.blank?
    when :four
      @custloan.loanstepfours.build unless !@custloan.loanstepfours.blank?
    when :five
      @custloan.loanstepfifths.build unless !@custloan.loanstepfifths.blank?
    when :six
      @custloan.loanstepsixths.build unless !@custloan.loanstepsixths.blank?
    when :seven
      @custloan.loanstepsevens.build unless !@custloan.loanstepsevens.blank?
    when :eight
      @custloan.loanstepeights.build unless !@custloan.loanstepeights.blank?
    when :nine
      @custloan.loanstepnines.build unless !@custloan.loanstepnines.blank?
    when :ten
      @custloan.loansteptens.build unless !@custloan.loansteptens.blank?
    end
    
    render_wizard
  end
  
  def update
    @custloan  = Custloan.find(params[:custloan_id])
    @custloan.update_attributes(params[:custloan])
    if step == :five && !@custloan.loanstepfifths.first.pass? 
      redirect_to wizard_path(:two), :flash => { :notice => "流程回退" }
    elsif step == :ten 
      @notice = Notice.new( { :user_id => current_user.id, 
                              :assist_user_id => @custloan.loansteptens.first.user_id,
                              :custloan_id => @custloan.id,
                              :cust_id => @custloan.cust_id,
                              :vaild_date => Time.now,
                              :status => get_dict('noteStatus', 1).id,
                              :note_type => get_dict('noteType', 1).id,
                              :note => '客户关系移交' } )
      @notice.save
        redirect_to @custloan, :flash => { :success => "客户交接已提交" }
    else
      render_wizard @custloan, :flash => { :success => "贷款流程更新成功" }
    end
  end
end
