source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.1"
gem "pg"
gem "puma", "~> 3.7"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jbuilder", "~> 2.5"
gem "turbolinks", "~> 5"
gem "kaminari", git: "https://github.com/amatsuda/kaminari"

# Other gems

gem "arel"
gem "rack-cors"
gem "active_model_serializers"
gem "decent_exposure"
gem "devise"
gem "dotenv-rails"
gem "delayed_job_active_record"
gem "interactor"
gem "jwt"
gem "pundit"
gem "slim-rails"
gem "faker"
gem "factory_girl_rails"
gem "carrierwave", "~> 1.0"
gem "mini_magick"
gem "fog-aws"

group :test do
  gem "database_cleaner"
  gem "email_spec"
  gem "shoulda-matchers"
  gem "json_spec"
  gem "webmock"
end

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "brakeman", require: false
  gem "bundler-audit", require: false
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
  gem "rspec-rails"
  gem "rspec-its"
  gem "rubocop", require: false
  gem "rubocop-rspec", require: false
  gem "rspec_api_documentation"
end

group :development do
  gem "foreman", require: false
  gem "bullet"
  gem "spring-commands-rspec"
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
