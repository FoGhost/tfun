source 'https://rubygems.org'

gem 'rails', '3.2.1'

# Backend
gem "mongoid", "~> 2.4"
gem "bson_ext", "~> 1.5"

# Frontend

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'simple_form'
gem 'bootstrap-rails', :require => 'bootstrap-rails', :git => 'git://github.com/xdite/bootstrap-rails.git'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

group :development, :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'spork'
  gem 'fabrication'
  gem 'faker'

  gem 'capybara'
  gem 'cucumber-rails'
  gem 'cucumber'
  gem 'database_cleaner'
  gem 'launchy'
end

group :development do
  gem 'linecache19', '0.5.13', :path => "#{ENV['GEM_HOME']}/gems/linecache19-0.5.13/"
  gem 'ruby-debug-base19', '0.11.26', :path => "#{ENV['GEM_HOME']}/gems/ruby-debug-base19-0.11.26/"
  gem 'ruby-debug19', :require => 'ruby-debug'
end
