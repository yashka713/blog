require 'spec_helper'
require 'rails_helper'
Capybara.javascript_driver = :webkit

feature 'Delete Post' do
  scenario 'remove Post from menu', js:true do
    log_in('user')
    visit 'posts/new'
    fill_in_trix_editor 'textField_trix_input_post', with: 'Test title'
    fill_in_trix_editor 'contentField_trix_input_post', with: 'Test content'
    click_button 'Create Post'
    click_link 'Delete Post'
    page.driver.browser.switch_to.alert.accept
    expect(page).to_not have_content('Delete Post')
  end
end