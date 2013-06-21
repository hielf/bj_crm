class LoanStepsController < ApplicationController
  include Wicked::Wizard
  steps :one, :two, :three, :four, :five, :six, :seven, :eight, :nine, :ten
    
  def show
    @title = "贷款流程"
    @custloan = Custloan.find(params[:custloan_id])
    case step
    when :two
      @custloan.loansteptwos.build unless !@custloan.loansteptwos.blank?
    when :three
      @custloan.loanstepthrees.build unless !@custloan.loanstepthrees.blank?
    end
    @cust = Cust.find_by_id(@custloan.cust_id)
    
    render_wizard
  end
  
  def update
    @custloan  = Custloan.find(params[:custloan_id])
    @custloan.update_attributes(params[:custloan])
    render_wizard @custloan, :flash => { :success => "信贷流程更新成功" }
  end
end
