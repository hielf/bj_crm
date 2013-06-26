class LoanStepsController < ApplicationController
  include Wicked::Wizard
  steps :one, :two, :three, :four, :five, :six, :seven, :seven_two, :eight, :nine, :ten
    
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
    end
    
    render_wizard
  end
  
  def update
    @custloan  = Custloan.find(params[:custloan_id])
    @custloan.update_attributes(params[:custloan])
    if step == :five && !@custloan.loanstepfifths.first.pass? 
      redirect_to wizard_path(:two), :flash => { :notice => "流程回退" }
    else
      render_wizard @custloan, :flash => { :success => "贷款流程更新成功" }
    end
  end
end
