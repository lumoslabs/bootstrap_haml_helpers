module BootstrapHamlHelpers
  module ControllerHelpers

    def self.included(base)
      base.around_action :init_bhh_context
      # base.prepend_before_filter :init_page_metadata
    end

    def init_bhh_context
      BootstrapHamlHelpers::Component::Base.init_context(view_context)
      yield
    ensure
      BootstrapHamlHelpers::Component::Base.teardown_context
    end
  end
end
