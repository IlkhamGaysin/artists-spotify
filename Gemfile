source "https://rubygems.org"

ruby "2.6.6"

gem "pg"
gem "rails", "~> 5.2.4.4"
gem "sprockets", "<4"
# Apitome doesn't support sprockets 4 and
# rails enforces to create manifest.js file so
# I downgraded to 3-rd version https://github.com/rails/sprockets-rails/issues/444

# server
gem "puma", "~> 3.0"

# CORS
gem "rack-attack"
gem "rack-cors"

# json
gem "active_model_serializers"

# main
gem "apitome"
gem "bootsnap"
gem "decent_exposure"
gem "listen", "~> 3.0.5"
gem "responders"
gem "rspec_api_documentation"
gem "rspotify"

group :development do
  gem "bullet"
  gem "spring"
  gem "spring-commands-rspec"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :development, :test do
  gem "brakeman"
  gem "bundler-audit"
  gem "byebug", platform: :mri
  gem "database_cleaner"
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem "json_spec"
  gem "pry-rails"
  gem "rspec_junit_formatter", require: false
  gem "rspec-rails"
  gem "rubocop", require: false
  gem "rubocop-faker", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "shoulda-matchers", require: false
  gem "simplecov", "~> 0.17.1", require: false
  gem "webmock", require: false
end
