class AddUserToCompanyComments < ActiveRecord::Migration
  def change
  	add_reference :company_comments, :user, index: true
    add_foreign_key :company_comments, :users
  end
end
