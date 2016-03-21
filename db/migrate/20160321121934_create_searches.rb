class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :country
      t.integer :min_people
      t.integer :max_people
      t.string :country_code

      t.timestamps null: false
    end
  end
end
