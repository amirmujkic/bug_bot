shared_examples_for 'an adapter' do |adapter, gem_class|
  before { BugBot.use_adapter adapter }

  describe '.notify' do
    before do
      allow(gem_class).to receive(:notify)
    end

    it "uses the #{adapter} gem" do
      expect(gem_class).to receive(:notify)
      BugBot.adapter.notify('ex')
    end

    it 'sends the error report' do
      expect(adapter).to receive(:notify).with('ex')
      adapter.notify('ex')
    end

    it 'supports sending custom payloads' do
      options = { foo: 'bar' }
      expect(adapter).to receive(:notify).with('ex', options)
      adapter.notify('ex', options)
    end
  end
end
