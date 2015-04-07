require 'rails_helper'

feature 'Items', type: :feature do
  scenario 'Mange items', js: true do
    visit root_path
    click_on 'New Item'

    select 'スポーツ', from: 'Category'
    select 'スポーツ用品', from: 'Sub category'
    click_on 'Save'

    expect(page).to have_content "Title can't be blank"
    expect(page).to have_select('Category', selected: 'スポーツ')
    expect(page).to have_select('Sub category', selected: 'スポーツ用品')

    fill_in 'Title', with: 'バット'
    click_on 'Save'

    expect(page).to have_content 'Item was successfully created.'
    expect(page).to have_content 'バット'
    expect(page).to have_content 'スポーツ'
    expect(page).to have_content 'スポーツ用品'

    click_on 'Edit'
    expect(page).to have_select('Category', selected: 'スポーツ')
    expect(page).to have_select('Sub category', selected: 'スポーツ用品')
  end
end