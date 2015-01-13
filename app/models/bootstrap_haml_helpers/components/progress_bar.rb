module BootstrapHamlHelpers::Components
  class ProgressBar < BootstrapHamlHelpers::Component::Base
    tag_name :div
    default_css_class 'progress'

    def initialize(options = {}, &block)
      striped = options.delete(:striped)
      animated = options.delete(:animated)
      type = options.delete(:type)

      super(options, &block)

      add_attribute(:class, "progress-striped") if striped
      add_attribute(:class, "progress-striped active") if animated
      add_attribute(:class, "progress-#{type}") if type

    end

    def bar(percentage, *args, &block)
      options = args.extract_options!

      type = options.delete(:type)
      type_string = " bar-#{type}" if type
      view_context.content_tag(:div, nil, class: "bar#{type_string}", style: "width: #{percentage}%")
    end

  end
end
