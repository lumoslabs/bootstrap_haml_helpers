$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bootstrap_haml_helpers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bootstrap_haml_helpers"
  s.version     = BootstrapHamlHelpers::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of BootstrapHamlHelpers."
  s.description = "TODO: Description of BootstrapHamlHelpers."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.12"

  s.add_dependency "bootstrap-sass", "2.3.1.0"
  s.add_dependency "compass-rails", "~> 1.0.3"
  s.add_dependency "compass", "~> 0.12.0"
  s.add_dependency "haml", "~> 3.1.7"
  s.add_dependency "sass-rails", "~> 3.2.5"
end