class AddCounterCacheToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :people_count, :integer, default: 0
  end
end
