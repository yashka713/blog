require 'spec_helper'
require 'rails_helper'

feature "Sign up" do

  scenario "Signing up with correct credentials" do
    visit 'users/sign_up'
      fill_in 'user_email', with: 'bain@example.com'
      fill_in 'user_phone', with: '844000001'
      fill_in 'user_password', with: 'bain@example.com'
      fill_in 'user_password_confirmation', with: 'bain@example.com'
      fill_in 'user_first_name', with: 'Bain'
      fill_in 'user_last_name', with: 'Noname'
    click_button 'Sign up'
    expect(page).to have_text('Welcome! You have signed up successfully.')
  end

end
