# encoding: utf-8
class LoanstepeightguarantorsController < ApplicationController
  before_filter :authenticate
  
  def add_new
    @custloan = Custloan.find(params[:id])
    @custloan.loanstepeightguarantors.build
    redirect_to wizard_path(:eight)
  end
end