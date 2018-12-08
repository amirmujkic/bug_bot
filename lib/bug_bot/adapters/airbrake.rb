require 'airbrake-ruby'
require 'bug_bot/adapter'

module BugBot
  module Adapters
    class Airbrake < Adapter
      def notify(exception, &block)
        ::Airbrake.notify(exception, &block)
      end
    end
  end
end
