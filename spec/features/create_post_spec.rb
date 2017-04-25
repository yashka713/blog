require 'spec_helper'
require 'rails_helper'

feature 'Create Post' do
  scenario 'Creating Post' do
    log_in('user')
    visit 'posts/new'
    fill_in_trix_editor 'textField_trix_input_post', with: 'Test title'
    fill_in_trix_editor 'contentField_trix_input_post', with: 'Test content'
    click_button 'Create Post'
    expect(page).to have_content 'Test title'
  end
end
