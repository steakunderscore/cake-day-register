source 'https://rubygems.org'

ruby '2.1.5'

gem 'rails'
gem 'pg', group: :production
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby
# Use Foundation for layout
gem 'foundation-rails'
gem 'foundation_rails_helper'

gem 'rails_12factor'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc
# Use unicorn as the app server
gem 'unicorn'

# Use resque and resque scheduler for queueing
gem 'resque'
gem 'resque-scheduler'

group :development do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Use Capistrano for deployment
  gem 'capistrano-rails'
  gem 'capistrano-unicorn-nginx'
  gem 'capistrano-rvm'
  gem 'capistrano-bundler'

  # Tools for TDD
  gem 'guard'
  gem 'guard-minitest'
  gem 'guard-bundler'
  gem 'guard-rubocop'

  # Tools for debugging
  gem 'mailcatcher'
end

group :test do
  gem 'shoulda'
  gem 'factory_girl_rails'
  gem 'faker'
end

group :development, :test do
  gem 'pry'
  gem 'rubocop'
end
