require 'rails_helper'

feature 'Items', type: :feature do
  background do
    Rails.application.load_seed
  end
  scenario 'Mange items', js: true do
    visit root_path
    click_on 'New Item'
  end
end