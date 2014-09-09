module BootstrapHamlHelpers
  module SpecViewHelpers
    def self.included(base)
      base.class_eval do
        helper BootstrapHamlHelpers::ApplicationHelper if respond_to?(:helper)

        before do
          if respond_to?(:view)
            BootstrapHamlHelpers::Component::Base.init_context(view)
            view.stub(:set_page_title)
            view.stub(:add_metatag)
          end
        end

        after do
          BootstrapHamlHelpers::Component::Base.teardown_context if respond_to?(:view)
        end
      end
    end
  end
end
