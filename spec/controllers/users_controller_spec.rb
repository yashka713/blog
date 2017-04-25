require 'rails_helper'
require 'spec_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #index' do
    it 'responds successfully with an HTTP 200 status code for index user page' do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'renders the index template' do
      get :index
      assert_template('users/index')
    end
  end

  describe 'GET #show' do
    before(:each) do
      @user = FactoryGirl.create(:user)
    end

    it 'renders the show template' do
      get :show, params: { id: @user }
      expect(response).to render_template :show
    end

    it 'sign out from user show page' do
      visit 'users/sign_in'
      fill_in 'user_email', with: @user.email
      fill_in 'user_password', with: @user.password
      click_button 'Sign in'
      get :show, params: { id: @user }
      click_link('Sign out', visible: false)
      expect(page).to have_text 'Signed out successfully.'
    end
  end

  describe 'GET #edit' do
    before(:each) do
      @user = FactoryGirl.create(:user)
      visit 'users/sign_in'
      fill_in 'user_email', with: @user.email
      fill_in 'user_password', with: @user.password
      click_button 'Sign in'
    end

    it 'render the edit template' do
      get :edit, params: { id: @user }
      expect(response).to redirect_to('users/edit')
    end
  end
end
