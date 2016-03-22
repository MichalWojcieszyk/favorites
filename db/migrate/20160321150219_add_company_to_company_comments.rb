class AddCompanyToCompanyComments < ActiveRecord::Migration
  def change
  	add_reference :company_comments, :company, index: true
    add_foreign_key :company_comments, :companies
  end
end
