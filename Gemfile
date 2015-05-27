source 'https://rubygems.org'

ruby '2.1.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', group: :development
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
gem 'foundation-rails', '5.4.3.1'
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

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
gem 'unicorn'

# Use resque and resque scheduler for queueing
gem 'resque'
gem 'resque-scheduler'

# Use Capistrano for deployment
gem 'capistrano-rails', group: :development
gem 'capistrano-unicorn-nginx', group: :development
gem 'capistrano-rvm', group: :development
gem 'capistrano-bundler', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
group :test do
  gem 'shoulda'
  gem 'factory_girl_rails'
  gem 'faker'
end

group :development, :test do
  gem 'pry'
  gem 'rubocop'
end
