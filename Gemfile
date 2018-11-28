# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.1'
gem 'bootstrap'
gem 'jquery-rails'

# Use postgresql as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem "composite_primary_keys", "~> 10.0"
gem "time_difference", "~> 0.7.0"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'coveralls', require: false
  gem 'rspec-rails', '~> 3.5'
  gem 'rubocop', '~> 0.60.0'
  gem 'selenium-webdriver'
  gem 'simplecov', '~> 0.16.1'
  gem 'simplecov-console', '~> 0.4.2'
  gem "factory_bot_rails", "~> 4.9"
  gem "faker", "~> 1.9"
  gem "database_cleaner", "~> 1.7"
  gem "activesupport", "~> 5.1"
  gem "timecop", "~> 0.9.1"
  gem "launchy", "~> 2.4"
  gem "json_matchers"
  gem "rack-test"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  gem "pry", "~> 0.12.2"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem "coffee-rails", "~> 4.2"

gem "devise", "~> 4.5"

gem "devise-jwt", "~> 0.5.8"

gem "rack-cors", "~> 1.0"
