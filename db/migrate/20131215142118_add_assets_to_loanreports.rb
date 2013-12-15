class AddAssetsToLoanreports < ActiveRecord::Migration
  def change
    add_column :loanreports, :estate_1, :string
    add_column :loanreports, :estate_2, :string
    add_column :loanreports, :automobile, :string
    add_column :loanreports, :assets, :string
  end
end
