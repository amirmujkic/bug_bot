require 'bugsnag'
require 'bug_bot/adapter'

module BugBot
  module Adapters
    class Bugsnag < Adapter
      def notify(exception, options = {})
        ::Bugsnag.notify(exception) do |report|
          report.meta_data = options
        end
      end
    end
  end
end
