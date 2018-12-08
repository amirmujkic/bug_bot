require 'bug_bot/adapters/airbrake'

RSpec.describe BugBot::Adapters::Airbrake do
  it_behaves_like 'an adapter', described_class, ::Airbrake
end
