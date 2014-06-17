module BootstrapHamlHelpers
  module ApplicationHelper

    def container(*args, &block)
      BootstrapHamlHelpers::Scaffolding::Container.build(*args, &block)
    end
  end
end
