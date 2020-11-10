source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'
gem 'http'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.4', '>= 5.2.4.4'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'capistrano', '~> 3.10', require: false
  gem 'capistrano-rails', '~> 1.4', require: false
  gem 'capistrano-bundler', '>= 1.1.0'
  gem 'rvm1-capistrano3', require: false
  gem 'capistrano3-puma'

  gem 'ed25519', '>= 1.2', '< 2.0'
  gem 'bcrypt_pbkdf'
  gem 'graphiql-rails'

end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.5'
gem 'bootstrap-sass', '>= 3.4.1'
gem 'font-awesome-sass', '~> 4.3.0'
gem 'jquery-ui-rails'
gem 'bootstrap-social-rails'

gem 'activeadmin'
gem 'devise'
gem 'jquery-rails'
gem 'owlcarousel-rails', '~> 2.2', '>= 2.2.3.5'


gem 'popper_js', '~> 1.9', '>= 1.9.9'

#try new gems for countdown

gem 'jquery-countdown-rails', '~> 2.0', '>= 2.0.2'


gem 'country_select', '~> 4.0'

gem 'pg', '~> 1.2', '>= 1.2.3'

gem 'faker', '~> 2.14'


gem 'populator', '~> 1.0'


gem 'omniauth'

gem 'cancancan'
gem 'async-websocket', '~> 0.8.0'

gem "sinatra"

gem 'excon'

gem 'sendgrid-ruby'

gem 'sendgrid-actionmailer'
# figaro to create env variables
gem 'figaro'

gem 'twilio-ruby', '~> 5.41.0'
gem 'slack-notifier'



# Zendesk API
gem "zendesk_api", git: 'https://github.com/zendesk/zendesk_api_client_rb'
gem 'ibm_watson'

gem 'dropbox_api'
gem 'graphql', '1.9.18'
gem 'graphiql-rails', group: :development