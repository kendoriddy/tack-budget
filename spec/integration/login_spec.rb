require 'rails_helper'

RSpec.feature 'Logins', type: :feature do
  background { visit new_user_registration_path }

  scenario 'with valid information' do
    fill_in 'user[name]', with: 'victor'
    fill_in 'Email', with: 'okorojiebube2@gmail.com'
    fill_in 'Password', with: 'victor12345'

    click_button 'Next'
    expect(page).to have_content('')
  end

  scenario 'with invalid information' do
    fill_in 'user[name]', with: ''
    fill_in 'Email', with: 'okorojiebubue@gmail.com'
    fill_in 'Password', with: 'victor12345'

    click_button 'Next'
    expect(page).to have_content('')
  end
end
