class AddSlugToCompanies < ActiveRecord::Migration
  def change
  	add_column :companies, :slug, :string, index: true
  end
end
