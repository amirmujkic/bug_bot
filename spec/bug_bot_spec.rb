RSpec.describe BugBot do
  describe '.adapter' do
    let(:adapter) { BugBot::Adapter }

    before { BugBot.adapter = adapter }

    it { expect(described_class.adapter).to eq(adapter) }
  end

  describe '.use_adapter' do
    before { BugBot.use_adapter(adapter) }

    context 'when using a symbol or a string' do
      let(:adapter) { :airbrake }

      it 'loads the corresponding adapter' do
        expect(described_class.adapter).to eq(BugBot::Adapters::Airbrake)
      end
    end

    context 'when using a class or module' do
      let(:adapter) { BugBot::Adapters::Bugsnag }

      it 'sets the provided adapter' do
        expect(described_class.adapter).to eq(adapter)
      end
    end

    xcontext 'when adapter is not provided' do
      xit 'uses the default adapter' do
      end
    end
  end

  xdescribe '.default_adapter' do
  end

  xdescribe '.load_adapter' do
  end

  xdescribe '.notify' do
  end
end
