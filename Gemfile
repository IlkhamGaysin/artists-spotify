source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'pg'

# server
gem 'puma', '~> 3.0'

# CORS
gem 'rack-cors'
gem 'rack-attack'

# json
gem 'active_model_serializers'

# main
gem 'decent_exposure'
gem 'responders'
gem 'rspotify'

group :development do
  gem "bullet"
  gem "spring-commands-rspec"
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  gem "apitome"
  gem "brakeman"
  gem "bundler-audit"
  gem "factory_girl_rails"
  gem "faker"
  gem "rspec-rails"
  gem "rspec_api_documentation"
  gem "rubocop"
  gem 'byebug', platform: :mri
  gem 'dotenv-rails'
end

group :test do
  gem "webmock", require: false
  gem "database_cleaner"
  gem "shoulda-matchers", require: false
  gem "json_spec"
end
