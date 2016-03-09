require 'spec_helper'

feature 'User adds new favorites' do
	let!(:company1) { create :company, name: "Wazony", country_code: "PL" }
	let!(:company2) { create :company, name: "Doniczki", country_code: "US" }
	let!(:company3) { create :company, name: "Podstawki", country_code: "NG" }
	let!(:person1) { create :person, first_name: "Marcin", last_name: "Marciniak", company: company1 }
	let!(:person2) { create :person, first_name: "Adam", last_name: "Adamski", company: company1 }
	let!(:person3) { create :person, first_name: "Tomek", last_name: "Tomski", company: company1 }

	background do
		sign_in
		expect(page).to have_content 'Companies'
	end

	scenario "Check if companies is created" do
		expect(page).to have_content('Wazony')
		expect(page).to have_content('Doniczki')
		expect(page).to have_content('Podstawki')
	end

	scenario "Check if first person is created" do
		click_link('Wazony')
		expect(page).to have_content('Marcin')
	end

	scenario "Check if second person is created" do
		click_link('Wazony')
		expect(page).to have_content('Adam')
	end

	scenario "Check if third person is created" do
		click_link('Wazony')
		expect(page).to have_content('Marcin')
	end

	scenario "Add first company to favorites" do
		click_link('', match: :prefer_exact)
		click_link('Favorites')
		expect(page).to have_content('Wazony')
	end

	scenario "Add first person to favorites" do
		click_link('Wazony')
		click_link('', match: :prefer_exact)
		click_link('Favorites')
		expect(page).to have_content('Marcin')
	end

	scenario "Add person and company to favorites" do
		click_link('', match: :prefer_exact)
		click_link('Favorites')
		expect(page).to have_content('Wazony')
		click_link('Back')
		click_link('Wazony')
		click_link('', match: :prefer_exact)
		click_link("Favorites")
		expect(page).to have_content('Wazony')
		expect(page).to have_content('Marcin')
	end
end