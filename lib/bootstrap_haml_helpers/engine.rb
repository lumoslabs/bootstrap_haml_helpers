module BootstrapHamlHelpers
  class Engine < Rails::Engine
    initializer 'bootstrap_haml_helpers.load_helpers' do
      Rails.logger.info "hi hi hi hi hih ih ih"
      # ActiveSupport.on_load(:action_controller) do
      #   include Lux::ControllerHelpers
      # end
    end
  end
end
