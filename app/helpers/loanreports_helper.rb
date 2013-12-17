module LoanreportsHelper
  def loan_report(id)
    @loan_report = Loanreport.find_by_id(id)
  end
end
