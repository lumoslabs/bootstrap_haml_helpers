source "http://rubygems.org"

# Declare your gem's dependencies in clerk.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

gem 'rails', '~> 5.0.0'

group :development, :test do
  gem 'capybara'
  gem 'guard', '~> 1.8'
  gem 'guard-rspec', '~> 3.1'
end
