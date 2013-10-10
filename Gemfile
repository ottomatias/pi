source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '~> 4.0'
gem 'protected_attributes'
gem 'activerecord-session_store'

# Auth/users
gem 'sorcery', '~> 0.8'
gem 'bcrypt-ruby', '~> 3.0.0'

# Frontend Utilities
gem 'slim', '~> 1.2'
gem 'turbolinks', '~> 1.3.0'
gem 'jquery-rails', '~> 2'
gem 'compass-rails', '~> 2.0.alpha.0'

# Markdown
gem 'kramdown', '~> 1.0', require: false
gem 'coderay', '~> 1.0'

# Pagination
gem 'kaminari', '~> 0.14'

# Date/URL Utilities
gem 'chronic', '~> 0.8'
gem 'stringex', '~> 2', github: 'rsl/stringex'

platform :jruby do
  gem 'trinidad'
  gem 'activerecord-jdbcpostgresql-adapter'
end

platform :ruby do
  gem 'unicorn'
end

group :production do
  gem 'aws-sdk', '~> 1.3.4'
  gem 'mysql'
end

group :development, :test do
  gem 'sqlite3', '~> 1', platform: [:ruby, :mswin, :mingw]
  #gem 'capistrano'
  #gem 'capistrano_colors'
  gem 'quiet_assets'
  gem 'guard-livereload', require: false
  gem 'rack-livereload'
  gem 'rb-fsevent', require: false
end

gem 'activerecord-deprecated_finders'

#group :assets do
  gem 'sass-rails', '~> 4.0.0'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'uglifier', '~> 1.0.3'
#end
