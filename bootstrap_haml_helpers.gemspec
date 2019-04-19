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

  s.add_dependency "rails"

  s.add_dependency "bootstrap-sass", "2.3.2.2"
  s.add_dependency "haml"
  s.add_dependency "sass-rails"
  s.add_dependency "sass"

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
end
