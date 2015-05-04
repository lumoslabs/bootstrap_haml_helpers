source "https://rubygems.org"

# this is for testing the gem against multiple rails versions
rails_version = ENV["RAILS_VERSION"]
gem "rails", rails_version

# Declare your gem's dependencies in bootstrap_haml_helpers.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

group :development, :test do
  gem 'capybara'
  gem 'guard-rspec'
end

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'debugger'
