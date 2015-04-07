require 'rails_helper'

feature 'Items', type: :feature do
  scenario 'Mange items', js: true do
    visit root_path
    click_on 'New Item'

    # サブカテゴリは非表示
    expect(page).to_not have_select('Sub category')

    # カテゴリを選択するとサブカテゴリが表示される
    select 'スポーツ', from: 'Category'
    select 'スポーツ用品', from: 'Sub category'
    click_on 'Save'

    # validationエラーが起きてもカテゴリとサブカテゴリは保持される
    expect(page).to have_content "Title can't be blank"
    expect(page).to have_select('Category', selected: 'スポーツ')
    expect(page).to have_select('Sub category', selected: 'スポーツ用品')

    # サブカテゴリがないカテゴリを選択するとサブカテゴリが非表示になる
    select '空のカテゴリ', from: 'Category'
    expect(page).to_not have_select('Sub category')
    click_on 'Save'

    # validationエラーが起きてもカテゴリとサブカテゴリは保持される
    expect(page).to have_content "Title can't be blank"
    expect(page).to have_select('Category', selected: '空のカテゴリ')
    expect(page).to_not have_select('Sub category')

    # 新規登録を実行する
    fill_in 'Title', with: 'バット'
    select 'スポーツ', from: 'Category'
    select 'スポーツ用品', from: 'Sub category'
    click_on 'Save'
    expect(page).to have_content 'Item was successfully created.'
    expect(page).to have_content 'バット'
    expect(page).to have_content 'スポーツ'
    expect(page).to have_content 'スポーツ用品'

    # 編集画面を開いてもカテゴリとサブカテゴリは保持される
    click_on 'Edit'
    expect(page).to have_select('Category', selected: 'スポーツ')
    expect(page).to have_select('Sub category', selected: 'スポーツ用品')

    # 空のカテゴリで更新する
    select '空のカテゴリ', from: 'Category'
    click_on 'Save'
    expect(page).to have_content 'Item was successfully updated.'
    expect(page).to have_content '空のカテゴリ'

    # 編集画面を開いてもカテゴリとサブカテゴリは保持される
    click_on 'Edit'
    expect(page).to have_select('Category', selected: '空のカテゴリ')
    expect(page).to_not have_select('Sub category')
  end
end