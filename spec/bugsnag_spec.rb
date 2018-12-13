require 'multi_bug/adapters/bugsnag'

RSpec.describe MultiBug::Adapters::Bugsnag do
  it_behaves_like 'an adapter', described_class, ::Bugsnag
end
