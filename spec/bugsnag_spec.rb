require 'bug_bot/adapters/bugsnag'

RSpec.describe BugBot::Adapters::Bugsnag do
  it_behaves_like 'an adapter', described_class, ::Bugsnag
end
