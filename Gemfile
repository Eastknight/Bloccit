source 'https://rubygems.org'

gem 'bootstrap-sass', '~> 3.3.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.7'
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
group :production do 
  gem 'pg'
  gem 'rails_12factor'
end

#Use these two Gems for images uploading
gem 'carrierwave'
gem 'mini_magick'
#Use Amazon's S3 as storage
gem 'fog'

#Pagination
gem 'will_paginate', '~> 3.0.6'

#Deal with sensitive data
gem 'figaro', '1.0'

#Add pundit to do authorizaton
gem 'pundit'

#Add devise as Athentication system
gem 'devise'

#Add MarkDown
gem 'redcarpet'

#
gem 'simple_form'

#better debug
group :development do
  gem 'binding_of_caller'
  gem 'better_errors'
end

group :development do 
  gem 'sqlite3'
  gem 'pry-byebug'
end

group :test do 
  gem 'rspec-rails', '~> 3.1.0'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.0'
end
#Enable Faker
gem 'faker'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

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

#set ruby version for Heroku
source "https://rubygems.org"
ruby "2.1.4"

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

