require 'rails'
require 'bootstrap_haml_helpers/component.rb'
require 'bootstrap_haml_helpers/controller_helpers'

module BootstrapHamlHelpers
  class Engine < Rails::Engine
    initializer 'bootstrap_haml_helpers.load_helpers' do
      ActiveSupport.on_load(:action_controller) do
        Rails.logger.info "in on_load :action_controller"
        include BootstrapHamlHelpers::ControllerHelpers
      end
    end
  end
end
