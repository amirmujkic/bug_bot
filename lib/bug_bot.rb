require 'bug_bot/identity'

module BugBot
  extend self

  SUPPORTED_ADAPTERS = { airbrake: 'airbrake-ruby', bugsnag: 'bugsnag' }.freeze

  def use_adapter(adapter)
    @adapter = case adapter
               when String, Symbol
                 load_adapter(adapter.to_s)
               when Class, Module
                 adapter
               else
                 load_adapter(default_adapter)
               end
  end

  def adapter
    return @adapter if defined?(@adapter)

    # TODO: Add adapter from config here
    load_adapter(default_adapter)
  end

  alias adapter= use_adapter

  def default_adapter
    return :airbrake if defined?(::Airbrake)
    return :bugsnag if defined?(::Bugsnag)

    SUPPORTED_ADAPTERS.each do |adapter, gem_name|
      require gem_name
      return adapter
    end

    # TODO: Return default adapter here
  end

  def load_adapter(name)
    require "bug_bot/adapters/#{name.downcase}"

    BugBot::Adapters.const_get(name.capitalize)
  end

  def notify(exception, &block)
    adapter.notify(exception, &block)
  end
end
