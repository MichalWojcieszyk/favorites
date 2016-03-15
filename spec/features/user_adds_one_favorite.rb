require 'spec_helper'

feature 'User adds new favorites' do
  let!(:company) { create :company, name: "Wazony", country_code: "PL" }
  let!(:person) { create :person, first_name: "Marcin", last_name: "Marciniak", company: company }

  background do
	  sign_in
	  expect(page).to have_content 'Companies'
  end

  scenario "Check if company is created" do
	  expect(page).to have_content('Wazony')
  end

  scenario "Check if first person is created" do
	  click_link('Wazony')
	  expect(page).to have_content('Marcin')
  end

  scenario "Add person to favorites" do
	  click_link('Wazony')
	  expect(page).to have_content('Marcin')
	  click_link('')
	  click_link('Favorites')
	  expect(page).to have_content('Marcin')
  end

  scenario "Add company to favorites" do
	  click_link('')
	  click_link('Favorites')
	  expect(page).to have_content('Wazony')
  end
end