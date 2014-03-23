source 'https://rubygems.org'
# ruby '2.1.0'

gem 'rails', '~> 3.2.16'
gem 'thin'
gem 'devise' 
gem 'haml'
gem 'paperclip'
gem 'omniauth'
gem 'faker'
gem 'uglifier', '>= 1.0.3'
gem 'jquery-rails'
gem 'bcrypt-ruby', '~> 3.0.0' # To use ActiveModel has_secure_password
gem 'carrierwave' # Photo uploads

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'
  gem 'xray-rails'
end

group :development, :test do
  gem 'sqlite3'
  gem 'factory_girl_rails'
  gem 'debugger'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
end 

group :production do
  gem 'capistrano'
  gem 'pg'
end
