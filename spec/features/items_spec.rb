require 'rails_helper'

feature 'Items', type: :feature do
  scenario 'Mange items', js: true do
    visit root_path
    click_on 'New Item'

    fill_in 'Title', with: 'バット'
    select 'スポーツ', from: 'Category'
    select 'スポーツ用品', from: 'Sub category'
    click_on 'Save'
    expect(page).to have_content 'Item was successfully created.'
  end
end