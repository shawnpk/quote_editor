require 'rails_helper'

RSpec.describe "Quotes", type: :system do
  # let(:accountant) { FactoryBot.create(:accountant) }
  #
  # before do
  #   visit new_user_session_path
  #
  #   fill_in 'Email', with: accountant.email
  #   fill_in 'Password', with: accountant.password
  #   click_button 'Log in'
  #
  #   expect(page).to have_current_path(root_path, wait: 5)
  # end
  #
  # it 'Creates a new quote', :js do
  #   visit quotes_path
  #
  #   expect(page).to have_selector('h1', text: 'Quotes')
  #
  #   click_link 'New quote'
  #   fill_in 'Name', with: 'Capybara quote'
  #
  #   expect(page).to have_selector('h1', text: 'Quotes')
  #   click_on 'Create quote'
  #
  #   expect(page).to have_selector('h1', text: 'Quotes')
  #   expect(page).to have_content('Capybara quote', wait: 5)
  # end
  #
  # it 'shows a quote' do
  #   quote = FactoryBot.create(:first, company: accountant.company)
  #
  #   visit quotes_path
  #
  #   click_link quote.name
  #
  #   expect(page).to have_selector('h1', text: quote.name)
  # end
  #
  # it 'updates a quote', :js do
  #   FactoryBot.create(:first, company: accountant.company)
  #
  #   visit quotes_path
  #
  #   expect(page).to have_selector('h1', text: 'Quotes')
  #
  #   click_on 'Edit', match: :first
  #   fill_in 'Name', with: 'Updated quote'
  #
  #   expect(page).to have_selector('h1', text: 'Quotes')
  #   click_on 'Update quote'
  #
  #   expect(page).to have_selector('h1', text: 'Quotes')
  #   expect(page).to have_content('Updated quote', wait: 5)
  # end
  #
  # it 'destroys a quote' do
  #   quote = FactoryBot.create(:first, company: accountant.company)
  #
  #   visit quotes_path
  #
  #   expect(page).to have_content(quote.name)
  #
  #   click_on 'Delete', match: :first
  #
  #   expect(page).not_to have_content(quote.name)
  # end
end
