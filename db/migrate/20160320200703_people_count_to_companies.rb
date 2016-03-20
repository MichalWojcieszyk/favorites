class PeopleCountToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :people_count, :integer, :null => false, :default => 0
  end
end
