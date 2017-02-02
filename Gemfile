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

# main
gem 'active_model_serializers'
gem 'decent_exposure'
gem 'responders'
gem 'rspotify'

group :development, :test do
  gem 'awesome_print'
  gem 'byebug', platform: :mri
  gem 'dotenv-rails'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
