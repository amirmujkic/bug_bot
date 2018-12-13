require 'bundler/setup'
Bundler.setup
Bundler.require(:default, :development, :test)

require 'simplecov'

SimpleCov.start do
  minimum_coverage 97
end

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
