source 'https://rubygems.org'

gem 'rails', '3.2.1'

# utility
gem 'devise'
gem 'cancan'
gem 'carrierwave' # Image uploader
gem 'mini_magick'
gem 'carrierwave-mongoid', :require => 'carrierwave/mongoid'

# database
gem "mongoid", "~> 2.4"
gem "bson_ext", "~> 1.5"

# view
gem 'jquery-rails'
gem 'haml-rails'
gem 'simple_form'
gem 'anjlab-bootstrap-rails', :require => 'bootstrap-rails',
                                  :git => 'git://github.com/anjlab/bootstrap-rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'
  gem 'uglifier', '>= 1.0.3'
end

# pagination
gem 'will_paginate', '3.0.2'
gem 'will_paginate_mongoid', '~> 1.0.2'
gem 'bootstrap-will_paginate', '0.0.3'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

group :development, :test do
  gem 'launchy'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'spork'
  gem 'fabrication'
  gem 'faker'
  gem 'cucumber-rails'
  gem 'cucumber'
  gem 'database_cleaner'
  gem 'capybara'
end
