class LoansteptwoguarantorsController < ApplicationController
  before_filter :authenticate
  
  def new
    @custloan = Custloan.find(params[:custloan_id])  #Loansteptwoguarantor.new
    @custloan.loansteptwoguarantors.build
  end
  
  def create
    @custloan = Custloan.new(params[:custloan])
    if @custloan.save
      # redirect_to @custloan, :flash => { :success => "信贷流程建立"}
      redirect_to loan_steps_path
    end
  end
end
