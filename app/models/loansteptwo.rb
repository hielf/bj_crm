class Loansteptwo < ActiveRecord::Base
  attr_accessible :attachment_file1, :attachment_file2, :attachment_file3, :attachment_file4,
                  :attachment_file5, :cust_id, :custloan_id
  
  belongs_to :custloan
end
