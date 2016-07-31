source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use sqlite3 as the database for Active Record
# 10.06.2016: specified that sqlite3 be only used for dev and test
gem 'sqlite3', group: [:development, :test]
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# 10.06.2016: uncommented the gem, usage for prod
gem 'therubyracer', platforms: :ruby, group: :production

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# 06.06.2016: added this gem to make the respond_to method work within the api
gem 'responders', '~> 2.0'

# Use ActiveModel has_secure_password
#24.07.2016: uncommented the gem
gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# 10.06.2016: uncommented the gem
gem 'capistrano-rails', group: :development
# 24.06.2016: added capistrano ssh doctor
gem 'capistrano-ssh-doctor', '~> 1.0', group: :development

# 24.06.2016: use PostgreSQL in prod
gem 'pg', group: :production

# 11.06.2016: adding passenger for prod
# 20.06.2016: uncommented gem
gem 'passenger', '>= 5.0.25', require: 'phusion_passenger/rack_handler', group: :production

# 17.07.2016: added the thin gem for the production server
gem 'thin', group: :production


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# 24.07.2016: addition of the bootstrap gem for layout & authentication
gem 'bootstrap-sass'
gem 'autoprefixer-rails'


