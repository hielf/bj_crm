module CustloansHelper
  def cust_loan(id)
    @cust_loan = Custloan.find_by_id(id)
  end
end
