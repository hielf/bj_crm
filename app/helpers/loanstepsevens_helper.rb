module LoanstepsevensHelper
  def steptype(id)
    @currentstepseven = Loanstepseven.find(id).bank_account_type
    case @currentstepseven
    when get_dict('accountOpenType', 1).id
      1
    when get_dict('accountOpenType', 2).id
      2
    else
      3
    end
  end
  
  # def test(id)
  #   @currentstepseven = Loanstepseven.find(id).bank_account_type
  #   get_dict('accountOpenType', 1)
  # end
end
