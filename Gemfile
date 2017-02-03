source 'http://rubygems.org'

gem 'rails', '3.2.22'

gem 'exception_notification', '3.0.1'

gem 'capistrano', :git => 'https://github.com/careerlinkvn/capistrano', :branch => 'master'
gem 'capistrano-notifier', :git => 'https://github.com/careerlinkvn/capistrano-notifier', :branch => 'master'
gem 'open4',      '0.9.3'
gem 'syntax',     '1.0.0'
gem 'version_fu', :github => 'jmckible/version_fu'
gem 'devise'
gem 'devise-encryptable'
gem 'haml'
gem 'therubyracer'
gem 'puma',  '~> 2.7.1'
gem 'eventmachine', '1.0.4'

group :development do
  gem 'sqlite3-ruby', :require => 'sqlite3'

  gem 'guard-bundler'
  gem 'guard-livereload'
  gem 'rack-livereload'

  gem 'pry'
  gem 'pry-remote'
  gem 'pry-nav'
  gem 'pry-rails'

  gem 'tapp'
end

group :test do
  gem 'sqlite3-ruby', :require => 'sqlite3'
  gem 'test-unit'
  gem 'mocha'
  gem 'factory_girl_rails'
  gem 'database_cleaner'

  gem 'rspec-rails'
  gem 'capybara'

  gem 'guard'
  gem 'spork'
  gem 'rb-fsevent'
  gem 'guard-test'
  gem 'guard-rspec'
  gem 'guard-spork'
end

group :production do
  gem 'mysql2'
  gem 'unicorn'
end

group :assets do
  gem 'jquery-rails'
  gem 'prototype-rails'

  gem 'compass'
  gem 'compass-rails'
  gem 'sass-rails'
  gem 'less-rails'
  gem 'coffee-rails'

  gem 'twitter-bootstrap-rails', '2.2.8'
end
