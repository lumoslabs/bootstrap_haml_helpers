$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bootstrap_haml_helpers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bootstrap_haml_helpers"
  s.version     = BootstrapHamlHelpers::VERSION
  s.authors     = ["Seung-Hyo Choi"]
  s.email       = ["seunghyo@lumoslabs.com"]
  s.homepage    = "http://www.lumosity.com"
  s.summary     = "Convenient, clean wrappers for Twitter Bootstrap components and scaffolding."
  s.description = "Convenient, clean wrappers for Twitter Bootstrap components and scaffolding."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 3.2.12"

  s.add_dependency "bootstrap-sass", "2.3.1.0"
  s.add_dependency "compass-rails", "~> 1.0.3"
  s.add_dependency "compass", "~> 0.12.0"
  s.add_dependency "haml", "~> 3.1.7"
  s.add_dependency "sass-rails", "~> 3.2.5"

  s.add_development_dependency 'sqlite3'
end
