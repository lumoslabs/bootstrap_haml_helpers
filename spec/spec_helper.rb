# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration

require 'bootstrap_haml_helpers'
require 'capybara'

# rails 3 requires requiring activesupport manually
require 'active_support/dependencies'

# load like a rails app would
ActiveSupport::Dependencies.autoload_paths << './app/models'
ActiveSupport::Dependencies.autoload_paths << './app/helpers'
ActiveSupport::Dependencies.autoload_paths << './app/assets'

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
  config.include BootstrapHamlHelpers::Capybara::StringMatchers

  config.before do
    ActionController::Base.helper BootstrapHamlHelpers::ApplicationHelper
    controller = ActionController::Base.new
    view_context = controller.view_context
    BootstrapHamlHelpers::Component::Base.init_context(view_context)
  end
end
