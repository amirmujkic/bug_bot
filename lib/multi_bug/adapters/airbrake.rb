require 'airbrake-ruby'
require 'multi_bug/adapter'

module MultiBug
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
