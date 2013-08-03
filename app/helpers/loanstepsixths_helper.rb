module LoanstepsixthsHelper
  def steptype(id)
    @currentstepsix = Loanstepsixth.find(id).contract_type
    case @currentstepsix
    when get_dict('contractType', 1).id
      1
    else
      2
    end
  end
  
  # def test(id)
  #   @currentstepseven = Loanstepseven.find(id).bank_account_type
  #   get_dict('accountOpenType', 1)
  # end
end
