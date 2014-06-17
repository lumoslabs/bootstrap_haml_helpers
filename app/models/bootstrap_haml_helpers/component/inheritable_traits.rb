module BootstrapHamlHelpers::Component
  module InheritableTraits
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def traits(*attrs)
        @traits ||= []
        @traits += attrs
        attrs.each do |attr|
          class_eval %{
            def self.#{attr}(string = nil)
              @#{attr} = string || @#{attr}
            end
            def self.#{attr}=(string = nil)
              #{attr}(string)
            end
            def #{attr}
              self.class.instance_variable_get('@#{attr}')
            end
          }
        end
        @traits
      end

      def inherited(subclass)
        (["traits"] + traits).each do |t|
          ivar = "@#{t}"
          subclass.instance_variable_set(ivar, instance_variable_get(ivar))
        end
      end
    end

  end
end
