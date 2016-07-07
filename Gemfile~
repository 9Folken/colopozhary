source 'https://rubygems.org'

gem 'rails'
gem 'pg'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'
gem 'bcrypt-ruby'
gem 'faker'
gem 'will_paginate'
gem 'bootstrap-will_paginate'


group :development, :test do
  gem 'rspec-rails'
  # The following optional lines are part of the advanced setup.
  gem 'guard-rspec', '4.6.0'
  gem 'spork-rails'
  gem 'guard-spork'
  gem 'childprocess'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.2.0'
  gem 'factory_girl_rails', '4.2.0'
  gem 'cucumber', '1.2.5' # Spork not supported as of Cucumber 1.3.0, need to use 1.2.5
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'

  # Uncomment these lines on Linux.
  gem 'libnotify'

end

gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'

group :doc do
  gem 'sdoc'
end

group :production do
  
  gem 'rails_12factor', '0.0.2'
end	
