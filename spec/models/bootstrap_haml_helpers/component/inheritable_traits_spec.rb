require 'spec_helper'

describe BootstrapHamlHelpers::Component::InheritableTraits do
  let(:mock_class) do
    class MockClass
      include BootstrapHamlHelpers::Component::InheritableTraits
      traits :cadence
      cadence 95
    end
    MockClass
  end

  let(:mock_subclass) do
    class MockSubclass < mock_class
      cadence 85
    end
    MockSubclass
  end

  describe 'Trait inheritance' do
    it 'should not inherit overloaded traits' do
      mock_class.new.cadence.should == 95
      mock_subclass.new.cadence.should == 85
      mock_class.new.cadence.should == 95
    end
  end
end
