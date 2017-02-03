source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "pg"
gem "rails", "~> 5.0.1"

# server
gem "puma", "~> 3.0"

# CORS
gem "rack-attack"
gem "rack-cors"

# json
gem "active_model_serializers"

# main
gem "apitome"
gem "decent_exposure"
gem "responders"
gem "rspotify"

group :development do
  gem "bullet"
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-commands-rspec"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :development, :test do
  gem "brakeman"
  gem "bundler-audit"
  gem "byebug", platform: :mri
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "faker"
  gem "rspec-rails"
  gem "rspec_api_documentation"
  gem "rubocop"
  gem "rubocop-rspec"
end

group :test do
  gem "codeclimate-test-reporter", "< 1.0", require: false
  gem "database_cleaner"
  gem "json_spec"
  gem "shoulda-matchers", require: false
  gem "webmock", require: false
end
