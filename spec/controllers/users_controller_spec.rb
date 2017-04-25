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
      get :show, params: {id: @user}
      expect(response).to render_template :show
    end

  end
end
