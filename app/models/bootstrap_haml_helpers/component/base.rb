module BootstrapHamlHelpers
  module Component
    class Base

      include InheritableTraits
      traits :tag_name, :default_css_class, :partial_path

      attr_accessor :attributes, :component_options, :content, :content_block, :content_string,
                    :controller, :output_buffer

      def initialize(*args, &block)
        self.component_options = args.extract_options!.symbolize_keys
        self.attributes = component_options.delete(:html).try(:symbolize_keys) || {}
        add_attribute(:class, default_css_class) if default_css_class
        self.content_block = block
        self.content_string = args.first
      end

      class << self
        def build(*args, &block)
          new(*args, &block).build
        end

        def init_context(view_context)
          self.view_context = view_context
          self.view_context.extend(Haml::Helpers)
          self.view_context.init_haml_helpers
        end

        def teardown_context
          self.view_context = nil
        end

        def view_context
          Thread.current[:view_context]
        end

        def view_context=(view_context)
          Thread.current[:view_context] = view_context
        end
      end

      def view_context
        self.class.view_context
      end

      def view_context=(view_context)
        self.class.view_context = view_context
      end

      def content_type
        :html
      end

      def add_attribute(name, value)
        self.attributes[name] ||= ''
        self.attributes[name] += " #{value}"
        self.attributes[name].squish!
        self
      end

      def add_attributes(attrs = {})
        attrs.each { |k,v| add_attribute(k.to_sym, v) }
        self
      end

      def build
        resolve_content
        view_context.content_tag(tag_name, content, attributes)
      end

      # Useful when building a component with a partial that encapsulates the block/string content
      def block_or_string_content
        content_block ? view_context.capture(self, &content_block) : content_string
      end

      private

      # def full_partial_path
      #   File.join('/lux/components/', partial_path)
      # end

      def fluid?
        false # Lux::Engine.config.fluid
      end

      def resolve_content
        case
        when partial_path
          self.content = view_context.render(:partial => full_partial_path, :locals => {obj: self})
        when content_block
          self.content = view_context.capture(self, &content_block)
        when content_string
          self.content = content_string
        end
      end
    end
  end
end
