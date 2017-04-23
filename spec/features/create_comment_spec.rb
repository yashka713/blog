require 'spec_helper'
require 'rails_helper'

feature 'Create Comment' do

  scenario 'Creating Comment if user is loged in' do
    create_post('user')
    fill_in 'Your comment, please', with: 'test comment'
    click_button 'Create Comment'
    expect(page).to have_content 'test comment'
  end

  scenario 'Creating Comment if another user is loged in' do
    create_post('user')
    click_link 'Sign out'
    log_in('admin')
    click_link 'Test title'
    fill_in 'Your comment, please', with: 'test comment'
    click_button 'Create Comment'
    expect(page).to have_content 'test comment'
  end

  scenario 'Creating Comment if user is not loged in' do
    create_post('user')
    click_link 'Sign out'
    click_link 'Test title'
    fill_in 'Your name, please', with: 'commenter'
    fill_in 'Your comment, please', with: 'test comment from not logged user'
    click_button 'Create Comment'
    expect(page).to have_content 'test comment from not logged user'
  end

end