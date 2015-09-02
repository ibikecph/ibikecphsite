source 'https://rubygems.org'

ruby '2.2.3'

gem 'rails', '4.2.4'
gem 'pg'

gem 'bcrypt', require: 'bcrypt'
gem 'devise', '3.5.2'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'cancancan', '~> 1.12.0'

gem 'backbone-rails'
gem 'jquery-rails'
gem 'i18n-js', '~> 3.0.0.rc8'
gem 'carrierwave'
gem 'mini_magick'
gem 'fog'
gem 'delayed_job_active_record'
gem 'simple-navigation'
gem 'will_paginate'
gem 'thin'
gem 'auto_html', git: 'git://github.com/ibikecph/auto_html.git', branch: 'master'
gem 'rails_autolink'
gem 'acts-as-taggable-on', '~> 3.4'
gem 'exception_notification'
gem 'google-analytics-rails'
gem 'rails-timeago'
gem 'jbuilder'
gem 'sass-rails'
gem 'coffee-rails'
gem 'uglifier'
gem 'eco'
gem 'recipient_interceptor'
gem 'koala'

group :development do
  gem 'quiet_assets'
  gem 'brakeman', :require => false
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'figaro'
end

group :test do
  gem 'factory_girl_rails', '~> 4.0'
  gem 'capybara'
  gem 'database_cleaner'
end

# place last to allow other stuff to be instrumented
group :production do
  gem 'workless', '~> 1.1.1'
  gem 'newrelic_rpm'
  gem 'rails_12factor'
end
