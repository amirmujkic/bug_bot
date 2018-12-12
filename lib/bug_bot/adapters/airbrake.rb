require 'airbrake-ruby'
require 'bug_bot/adapter'

module BugBot
  module Adapters
    class Airbrake < Adapter
      def notify(exception, options = {})
        ::Airbrake.notify(exception) do |report|
          report[:params].merge!(options)
        end
      end
    end
  end
end
