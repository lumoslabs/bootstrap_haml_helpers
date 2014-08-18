require 'spec_helper'

describe BootstrapHamlHelpers::Scaffolding::Container do
  let(:content) { 'content' }
  subject { BootstrapHamlHelpers::Scaffolding::Container.new(content) }

  context 'given a string' do
    it 'renders the string content' do
      Nokogiri.parse(subject.build).text == content
    end
  end

  context "given a block" do
    let(:content) { Proc.new { 2 } }
    subject { BootstrapHamlHelpers::Scaffolding::Container.new(&content) }

    it 'yields to a block for its content' do
      subject.view_context.should_receive(:capture).and_yield
      subject.build
    end

    it 'has proper attributes' do
      subject.default_css_class.should == 'container'
      subject.tag_name.should == :div
    end
  end

  context 'with the fluid option' do
    subject { BootstrapHamlHelpers::Scaffolding::Container.new(content, fluid: true) }

    it 'uses the fluid classname' do
      subject.default_css_class.should == "container-fluid"
    end
  end
end
