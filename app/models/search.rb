class Search < ActiveRecord::Base

	def search_companies
		companies = Company.all

		companies = companies.where(["lower(name) LIKE ?", "%#{keywords.downcase}%"]) if keywords.present?
		companies = companies.where(["country LIKE ?", country]) if country.present?
		companies = companies.where(["people_count >= ?", min_people]) if min_people.present?
		companies = companies.where(["people_count <= ?", max_people]) if max_people.present?
		companies = companies.where(["country_code LIKE ?", country_code]) if country_code.present?

		return companies
	end
end
