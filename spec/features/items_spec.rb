require 'rails_helper'

feature 'Items', type: :feature do
  background do
    root = Category.create name: 'root'
    sport = root.sub_categories.create(name: 'スポーツ')
    sport.sub_categories.create(name: 'スポーツ用品')

    root.sub_categories.create(name: '空のカテゴリ')
  end
  scenario 'Mange items', js: true do
    pending 'Flat UI breaks test.'
    # Itemの新規作成画面を開く
    visit root_path
    click_on 'New Item'

    # 初期状態ではサブカテゴリは非表示
    expect(page).to_not have_select('Sub category')

    # カテゴリを選択するとサブカテゴリが表示される
    select 'スポーツ', from: 'Category'
    expect(page).to have_select('Sub category')
    select 'スポーツ用品', from: 'Sub category'

    # validationエラーが起きてもカテゴリとサブカテゴリは保持される
    click_on 'Save'
    expect(page).to have_content "Title can't be blank"
    expect(page).to have_select('Category', selected: 'スポーツ')
    expect(page).to have_select('Sub category', selected: 'スポーツ用品')

    # サブカテゴリがないカテゴリを選択するとサブカテゴリが非表示になる
    select '空のカテゴリ', from: 'Category'
    expect(page).to_not have_select('Sub category')

    # validationエラーが起きてもカテゴリとサブカテゴリは保持される
    click_on 'Save'
    expect(page).to have_content "Title can't be blank"
    expect(page).to have_select('Category', selected: '空のカテゴリ')
    expect(page).to_not have_select('Sub category')

    # 新規登録を実行すると正しくデータが保存される
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

    # 空のカテゴリで更新すると正しくデータが保存される
    select '空のカテゴリ', from: 'Category'
    click_on 'Save'
    expect(page).to have_content 'Item was successfully updated.'
    expect(page).to have_content '空のカテゴリ'
    expect(page).to_not have_content 'Sub category'

    # 編集画面を開いてもカテゴリとサブカテゴリは保持される
    click_on 'Edit'
    expect(page).to have_select('Category', selected: '空のカテゴリ')
    expect(page).to_not have_select('Sub category')
  end
end