module BootstrapHamlHelpers
  module ApplicationHelper

    def container(*args, &block)
      BootstrapHamlHelpers::Scaffolding::Container.build(*args, &block)
    end

    def progress_bar(*args, &blk)
      BootstrapHamlHelpers::Components::ProgressBar.build(*args, &blk)
    end
  end
end
