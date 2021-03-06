# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.6"

gem "pg"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 5.2.6"
# query ui
gem "bootstrap"
gem "font-awesome-rails"
gem "font-awesome-sass"
gem "jquery-ui-rails"
# Use mysql as the database for Active Record
gem "mysql2", ">= 0.4.4", "< 0.6.0"
# Use Puma as the app server
# Use SCSS for stylesheets
gem "sass-rails", "~> 5.0"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"
gem 'azure_stt'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
# jquery
gem "jquery-rails"
gem 'net-http'
# Use CoffeeScript for .coffee assets and views
gem "coffee-rails", "~> 4.2"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "jquery-turbolinks"
gem "turbolinks", "~> 5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.5"
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.1.0", require: false
gem 'listen'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: %i[mri mingw x64_mingw]
end

group :development do
    
    gem 'capistrano-rvm', require: false
    gem 'capistrano',         require: false
    gem 'capistrano-rails',   require: false
    gem 'capistrano-bundler', require: false
    gem 'capistrano3-puma',   require: false
end

gem 'puma'

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem "chromedriver-helper"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

gem "activeadmin", github: "gregbell/active_admin"

# Plus integrations with:
gem "cancancan"
gem "devise"
gem "draper"
gem "faker"
gem "pundit"
gem "rubocop", require: false
gem "json"
gem "highcharts-rails"

gem "arbre"

gem "country_select", "~> 6.0"

gem "groupdate"

gem "inherited_resources"
gem "has_scope"
gem "responders"
gem "slack-ruby-client"
gem "slack-notifier"
gem 'chartkick'

# week 7 API gems
gem 'excon'
gem 'twilio-ruby'
gem "figaro"
gem 'jwt'
gem 'ibm_watson', git: 'https://github.com/watson-developer-cloud/ruby-sdk', branch: 'master'
gem 'hashie'
gem 'zendesk_api'
gem 'faraday'
gem 'sendgrid-ruby'
gem 'sendgrid-actionmailer', '~> 2.4.0'
gem 'dropbox_api'
gem 'httparty' , '~> 0.17'
gem 'dry-struct' , '~> 1'