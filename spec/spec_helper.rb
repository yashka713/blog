require 'capybara/rspec'
require 'factory_girl_rails'
# include Warden::Test::Helpers

RSpec.configure do |config|
  # rspec-expectations config goes here. You can use an alternate
  # assertion/expectation library such as wrong or the stdlib/minitest
  # assertions if you prefer.
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.include Capybara::DSL

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end

def log_in(user)
  fake_user = FactoryGirl.create(user.to_sym)
  visit 'users/sign_in'
  fill_in 'user_email', with: fake_user.email
  fill_in 'user_password', with: fake_user.password
  click_button 'Sign in'
end

def create_post(user)
  log_in(user)
  visit 'posts/new'
  fill_in_trix_editor 'textField_trix_input_post', with: 'Test title'
  fill_in_trix_editor 'contentField_trix_input_post', with: 'Test content'
  click_button 'Create Post'
end
