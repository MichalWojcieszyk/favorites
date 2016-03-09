class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column :companies, :country_code, :string
  end
end
