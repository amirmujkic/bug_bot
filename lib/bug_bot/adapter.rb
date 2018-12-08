require 'singleton'

module BugBot
  class Adapter
    include Singleton
    class << self
      def notify(exception, &block)
        instance.notify(exception, &block)
      end
    end
  end
end
