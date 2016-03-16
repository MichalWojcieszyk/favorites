class Company < ActiveRecord::Base
  has_many :people
  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  def country_name
    country_code = self.country_code
    ISO3166::Country[country_code]
  end
end
