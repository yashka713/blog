source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.2'
gem 'pg'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'selenium-webdriver', '~> 2.53'
  gem "capybara-webkit"
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'web-console', '>= 3.3.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'slim-rails'
gem 'bootstrap-sass'
gem 'cancancan'
gem 'carrierwave', '~> 1.0'
gem 'devise'
gem 'gravtastic'
gem 'mini_magick'
gem 'ransack', github: 'activerecord-hackery/ransack'
gem 'rubocop', require: false
gem 'simple_form'
gem 'trix'
gem 'capybara'
gem "factory_girl_rails", "~> 4.0"
gem 'kaminari'
