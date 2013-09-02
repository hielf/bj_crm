module LoanstepsevensHelper
  def steptypeseven(id)
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
  
  def steptypesevenadd1(id)
    @currentstepsevenadd1 = Loanstepsevenadditional.find(id).bank_account_type
    case @currentstepsevenadd1
    when get_dict('accountOpenType', 1).id
      1
    when get_dict('accountOpenType', 2).id
      2
    else
      3
    end
  end
end
