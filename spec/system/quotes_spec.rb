require 'rails_helper'

RSpec.describe "Quotes", type: :system do
  it 'Creates a new quote', :js do
    visit quotes_path

    expect(page).to have_selector('h1', text: 'Quotes')

    click_link 'New quote'
    fill_in 'Name', with: 'Capybara quote'

    expect(page).to have_selector('h1', text: 'Quotes')
    click_on 'Create quote'

    expect(page).to have_selector('h1', text: 'Quotes')
    expect(page).to have_content('Capybara quote')
  end

  it 'shows a quote' do
    quote = FactoryBot.create(:first)

    visit quotes_path

    click_link quote.name

    expect(page).to have_selector('h1', text: quote.name)
  end

  it 'updates a quote', :js do
    FactoryBot.create(:first)

    visit quotes_path

    expect(page).to have_selector('h1', text: 'Quotes')

    click_on 'Edit', match: :first
    fill_in 'Name', with: 'Updated quote'

    expect(page).to have_selector('h1', text: 'Quotes')
    click_on 'Update quote'

    expect(page).to have_selector('h1', text: 'Quotes')
    expect(page).to have_content('Updated quote')
  end

  it 'destroys a quote' do
    quote = FactoryBot.create(:first)

    visit quotes_path

    expect(page).to have_content(quote.name)

    click_on 'Delete', match: :first

    expect(page).not_to have_content(quote.name)
  end
end
