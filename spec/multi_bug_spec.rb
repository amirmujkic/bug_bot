RSpec.describe MultiBug do
  describe '.use_adapter' do
    before { MultiBug.use_adapter(adapter) }

    context 'when using a symbol or a string' do
      let(:adapter) { :airbrake }

      it 'loads the provided adapter' do
        expect(described_class.adapter).to eq(MultiBug::Adapters::Airbrake)
      end
    end

    context 'when using a class or module' do
      let(:adapter) { described_class::Adapters::Bugsnag }

      it 'sets the provided adapter' do
        expect(described_class.adapter).to eq(adapter)
      end
    end

    xcontext 'when adapter is not provided' do
      xit 'uses the default adapter' do
      end
    end
  end

  describe '.notify' do
    described_class::SUPPORTED_ADAPTERS.each do |adapter, _|
      context "when the #{adapter} gem is used" do
        before do
          described_class.use_adapter(adapter)
          allow(described_class.adapter).to receive(:notify)
        end

        it "sends the error report via #{adapter}" do
          expect(described_class.adapter).to receive(:notify)
          described_class.adapter.notify('ex')
        end

        it 'forwards the options to the adapter' do
          options = { foo: 'bar' }
          expect(described_class.adapter).to receive(:notify).with('ex', options)
          described_class.adapter.notify('ex', options)
        end
      end
    end
  end

  xdescribe '.default_adapter' do
  end
end
