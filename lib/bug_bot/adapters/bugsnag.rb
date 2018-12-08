require 'bugsnag'
require 'bug_bot/adapter'

module BugBot
  module Adapters
    class Bugsnag < Adapter
      def notify(exception, &block)
        ::Bugsnag.notify(exception, &block)
      end
    end
  end
end
