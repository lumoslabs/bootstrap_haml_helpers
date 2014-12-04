# Spec Helpers for BootstrapHamlHelpers::Components. Assumes `subject` is a BootstrapHamlHelpers::Component object.

shared_examples_for 'a container for block' do |block|
  it 'renders the content of the block' do
    block = send(block) if block.class == Symbol
    subject.build.should have_content(block.call)
  end
end

shared_examples_for 'an element with class' do |klass|
  it "is an element with class '#{klass}'" do
    (subject.default_css_class.include?(klass) || subject.attributes[:class].include?(klass)).should be_true
  end
end

shared_examples_for 'an element with attributes' do |attrs|
  it "is an HTML element with attributes '#{attrs}'" do
    subject.attributes.each { |k,v| v.include?(attrs[k]).should be_true }
  end
end
