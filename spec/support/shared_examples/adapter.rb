shared_examples_for 'an adapter' do |adapter, gem_class|
  before { BugBot.use_adapter adapter }

  describe '.notify' do
    before do
      allow(gem_class).to receive(:notify)
    end

    it 'forwards the error report' do
      block = proc {}
      expect(adapter).to receive(:notify).with('ex', &block)
      adapter.notify('ex', &block)
    end

    it "uses the #{gem_class} gem" do
      expect(gem_class).to receive(:notify)
      adapter.notify('ex')
    end
  end
end
