require 'spec_helper'

describe BootstrapHamlHelpers::Components::ProgressBar do
  let(:progress_bar_blk) { Proc.new { 'progress bar content' } }
  let(:progress_bar_options) { {} }
  let(:progress_bar) { BootstrapHamlHelpers::Components::ProgressBar.new(progress_bar_options, &progress_bar_blk) }

  subject { progress_bar }

  it_behaves_like 'a container for block', :progress_bar_blk
  it_behaves_like 'an element with class', 'progress'

  context 'when the striped option present' do
    let(:progress_bar_options) { { striped: true } }

    it_behaves_like 'an element with class', 'progress progress-striped'
  end

  context 'when the animated option is present' do
    let(:progress_bar_options) { { animated: true } }

    it_behaves_like 'an element with class', 'progress progress-striped active'
  end

  context 'when the type option is present' do
    let(:progress_bar_options) { { type: 'success' } }

    it_behaves_like 'an element with class', 'progress progress-success'
  end

  describe '#bar' do
    let(:percentage) { 77 }
    subject { Nokogiri.parse(progress_bar.bar(percentage)).css('*').first }

    it 'adds a bar with the given percentage' do
      expect(subject['class']).to eq('bar')
      expect(subject['style']).to eq("width: #{percentage}%")
    end
  end
end
