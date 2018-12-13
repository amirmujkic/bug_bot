require 'bugsnag'
require 'multi_bug/adapter'

module MultiBug
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
