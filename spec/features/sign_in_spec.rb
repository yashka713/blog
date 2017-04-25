require 'spec_helper'
require 'rails_helper'

feature 'Sign in' do
  scenario 'Sign in with incorrect credentials' do
    visit 'users/sign_in'
    fill_in 'user_email', with: 'yarosla1@example.com'
    fill_in 'user_password', with: 'yarosla1@example.com'
    click_button 'Sign in'
    expect(page).to have_content 'Invalid Email or password.'
  end

  scenario 'Sign in with correct credentials' do
    user = FactoryGirl.create(:user)
    visit 'users/sign_in'
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: user.password
    click_button 'Sign in'
    expect(page).to have_content 'Signed in successfully.'
  end
end
