class CreateCompanyComments < ActiveRecord::Migration
  def change
    create_table :company_comments do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
