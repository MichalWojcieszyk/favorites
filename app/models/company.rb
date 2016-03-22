class Company < ActiveRecord::Base
  has_many :people
  has_many :company_comments, dependent: :destroy

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]

  def country_name
    country_code = self.country_code
    ISO3166::Country[country_code]
  end

  def self.search(search)
  	if search
  		where(['lower(name) LIKE ?', "%#{search.downcase}%"])
  	else
  		all
  	end
  end
end
