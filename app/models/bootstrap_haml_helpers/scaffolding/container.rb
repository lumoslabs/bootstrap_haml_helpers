module BootstrapHamlHelpers
  module Scaffolding
    class Container < BootstrapHamlHelpers::Component::Base
      tag_name :div
      default_css_class 'container'

      def default_css_class
        fluid? ? 'container-fluid' : 'container'
      end

      private

      def fluid?
        super || component_options[:fluid]
      end
    end
  end
end
