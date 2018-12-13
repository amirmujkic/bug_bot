require 'multi_bug/adapters/airbrake'

RSpec.describe MultiBug::Adapters::Airbrake do
  it_behaves_like 'an adapter', described_class, ::Airbrake
end
