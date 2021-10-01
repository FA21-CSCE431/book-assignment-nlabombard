# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Garry Blotter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Garry Blotter')
  end
end

RSpec.describe 'Creating a book with author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
	fill_in 'Author', with: 'P. K. Fire'
	click_on 'Create Book'
	visit books_path
	expect(page).to have_content('P. K. Fire')
  end
end

RSpec.describe 'Creating a book with price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
	fill_in 'Price', with: '73'
	click_on 'Create Book'
	visit books_path
	expect(page).to have_content('73')
  end
end

RSpec.describe 'Creating a book with publish date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
	fill_in 'Published Date', with: '02/29/2020'
	click_on 'Create Book'
	visit books_path
	expect(page).to have_content('02/29/2020')
  end
end