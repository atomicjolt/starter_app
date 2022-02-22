# If bundler starts to act up run these commands to start over and clean up:
# rm -rf ~/.bundle/ ~/.gem/; rm -rf $GEM_HOME/bundler/ $GEM_HOME/cache/bundler/; rm -rf .bundle/; rm -rf vendor/cache/; rm -rf Gemfile.lock
# rvm gemset empty amasynsoftware
# bundle install

source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'

# Database
gem "pg"

# UI
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'font_assets' # sets headers and mimetypes for fonts in the asset pipeline
gem 'autoprefixer-rails'
gem 'non-stupid-digest-assets' # also compile assets without digest (fixes font problem)
gem "bower-rails"

# authentication, authorization, integrations
gem 'devise'
gem 'omniauth', '~> 1.1.3'
gem 'oauth', '~> 0.5.8'
gem 'cancancan'

# Email
gem 'sendgrid'

# JSON parser
gem 'yajl-ruby', require: 'yajl'

# deployment
gem 'unicorn'
gem 'unicorn-rails'

# Used for deploying to Heroku. Can be removed if not deploying to Heroku.
gem 'heroku_secrets', github: 'alexpeattie/heroku_secrets'
gem 'rails_12factor'

# API Related
gem 'httparty'

group :development do
  gem 'spring'
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'hub', :require=>nil
  gem 'mail_view'
  gem 'mailcatcher'
  gem 'quiet_assets'
  gem 'rails_apps_pages'
  gem 'rails_apps_testing'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
end

group :development, :test do
  gem 'byebug'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'fakeweb'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', require: false
  gem 'webmock'
end

