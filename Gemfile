source 'https://rubygems.org'
# ruby '2.1.0'
gem 'rails', '~> 3.2.16'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


gem 'devise' #for user log in 
gem 'haml'  
gem 'paperclip' #for video upload 
gem 'cancan'
gem 'omniauth' #for security 
gem 'faker'

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
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

gem 'uglifier', '>= 1.0.3'


gem 'jquery-rails'


#photo upload gem
gem 'carrierwave'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

  group :production do
    # Deploy with Capistrano
    gem 'capistrano'
    gem 'pg'
  end
