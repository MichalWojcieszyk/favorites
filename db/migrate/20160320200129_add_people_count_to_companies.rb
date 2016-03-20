class AddPeopleCountToCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :people_count
  end
end
